/*
 * This module creates all the necessary components to make the PDN PUF.
 * 
 * Parameters
 *   C_S_AXI_ADDR_WIDTH: the number of bits in the address for the Axi4Lite bus
 *   C_S_AXI_DATA_WIDTH: the number of data bits for the Axi4Lite bus
 *   INITIAL:            the length of the initial delay line in the TDC
 *   DELAY:              the length of the sensitive delay line in the TDC
 *   READ_MAX_ADDR:      the address where the largest value measured by the
 *                       TDC can be read from
 *   REC_ADDR:           the address that is written to to indicate that a
 *                       measurement should be made
 *   FREQ_ADDR:          the address where the frequency to be measured is
 *                       stored
 *   VIRUS_ADDR:         the address of the bitmask that determines which power
 *                       viruses are used
 *   MEM_WIDTH:          the size of each value in memory
 *   PP_ADDR:            the address that will return the peak-to-peak value
 *                       when read from
 *   RMS_ADDR:           the address that will return the sum-of-squared
 *                       measured values when read from
 *   SUM_ADDR:           the address that will return the sum of measured
 *                       values when read from
 *   ABS_READ_MAX:       the number of reads performed each measurement
 *   VIRUS_NUM_B:        the number of virus_groups in the power virus
 *   VIRUS_B_SIZE:       the size of each virus_group
 *   SIM:                the value to use for total in simulation
 *   CHALLENGE_WIDTH:    the length of the challenge used
 *   CHALLENGE_ADDR:     the address of the register storing the challenge.
 *                       Because the challenge is so large, it requires several
 *                       writes
 *
 * Inputs
 *   S_AXI_ACLK:         the global clock signal
 *                       Other Axi4Lite signals
 *   clk2:               the clock that is used to clock when the power virus
 *                       turns on and off
 * 
 * Outputs
 *   trigger:            a signal used to trigger an external oscilloscope for
 *                       measurements of the PDN
 *                       Other Axi4Lite signals
 *
*/

`timescale 1ns / 1ps

module top#(parameter C_S_AXI_ADDR_WIDTH = 16, C_S_AXI_DATA_WIDTH = 32, INITIAL=32, DELAY=63, READ_MAX_ADDR='hFFF4, 
    REC_ADDR='hFFFC, FREQ_ADDR='hFFF8, VIRUS_ADDR='hFFE0, MEM_WIDTH=16, PP_ADDR='hFFF0, RMS_ADDR = 'hFFEC, SUM_ADDR='hFFE8,
    ABS_READ_MAX=8192, /*VIRUS_NUM_B=128,*/ VIRUS_B_SIZE=6144, SIM=0, CHALLENGE_WIDTH=128, CHALLENGE_ADDR='hFF00,
    RUNS=128, MEAN_ADDR='hFEFC, VAR_ADDR='hFEF8)(
    // Axi4Lite Bus
    input       S_AXI_ACLK,
    input       S_AXI_ARESETN,
    input       [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_AWADDR,
    input       S_AXI_AWVALID,
    output      S_AXI_AWREADY,
    input       [C_S_AXI_DATA_WIDTH-1:0] S_AXI_WDATA,
    input       [3:0] S_AXI_WSTRB,
    input       S_AXI_WVALID,
    output      S_AXI_WREADY,
    output      [1:0] S_AXI_BRESP,
    output      S_AXI_BVALID,
    input       S_AXI_BREADY,
    input       [C_S_AXI_ADDR_WIDTH-1:0] S_AXI_ARADDR,
    input       S_AXI_ARVALID,
    output      S_AXI_ARREADY,
    output      [C_S_AXI_DATA_WIDTH-1:0] S_AXI_RDATA,
    output      [1:0] S_AXI_RRESP,
    output      S_AXI_RVALID,
    input       S_AXI_RREADY,
    input       clk2,
    output  reg trigger
);

// Simple bus used to communicate with Axi4Lite Supporter module
wire [C_S_AXI_ADDR_WIDTH-1:0] wrAddr;
wire [C_S_AXI_DATA_WIDTH-1:0] wrData;
wire wr;
wire [C_S_AXI_ADDR_WIDTH-1:0] rdAddr;
reg  [C_S_AXI_DATA_WIDTH-1:0] rdData;
wire rd;

// Outputs from the TDC
wire [DELAY-1:0] tdcOut;

// Signals for the power virus. These are clocked with clk2
reg virusEnD, virusEnQ;
//reg virusFlagD, virusFlagQ;
wire [VIRUS_B_SIZE-1:0] virusOut;
reg [CHALLENGE_WIDTH-1:0] challengeD, challengeQ;

Axi4LiteSupporter#(.C_S_AXI_ADDR_WIDTH(C_S_AXI_ADDR_WIDTH), .C_S_AXI_DATA_WIDTH(C_S_AXI_DATA_WIDTH))AxiSupporter1(
    // Simple Bus
    .wrAddr(wrAddr),                    // output   [C_S_AXI_ADDR_WIDTH-1:0]
    .wrData(wrData),                    // output   [C_S_AXI_DATA_WIDTH-1:0]
    .wr(wr),                            // output
    .rdAddr(rdAddr),                    // output   [C_S_AXI_ADDR_WIDTH-1:0]
    .rdData(rdData),                    // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .rd(rd),                            // output   
    // Axi4Lite Bus
    .S_AXI_ACLK(S_AXI_ACLK),            // input
    .S_AXI_ARESETN(S_AXI_ARESETN),      // input
    .S_AXI_AWADDR(S_AXI_AWADDR),        // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .S_AXI_AWVALID(S_AXI_AWVALID),      // input
    .S_AXI_AWREADY(S_AXI_AWREADY),      // output
    .S_AXI_WDATA(S_AXI_WDATA),          // input    [C_S_AXI_DATA_WIDTH-1:0]
    .S_AXI_WSTRB(S_AXI_WSTRB),          // input    [3:0]
    .S_AXI_WVALID(S_AXI_WVALID),        // input
    .S_AXI_WREADY(S_AXI_WREADY),        // output        
    .S_AXI_BRESP(S_AXI_BRESP),          // output   [1:0]
    .S_AXI_BVALID(S_AXI_BVALID),        // output
    .S_AXI_BREADY(S_AXI_BREADY),        // input
    .S_AXI_ARADDR(S_AXI_ARADDR),        // input    [C_S_AXI_ADDR_WIDTH-1:0]
    .S_AXI_ARVALID(S_AXI_ARVALID),      // input
    .S_AXI_ARREADY(S_AXI_ARREADY),      // output
    .S_AXI_RDATA(S_AXI_RDATA),          // output   [C_S_AXI_DATA_WIDTH-1:0]
    .S_AXI_RRESP(S_AXI_RRESP),          // output   [1:0]
    .S_AXI_RVALID(S_AXI_RVALID),        // output    
    .S_AXI_RREADY(S_AXI_RREADY)         // input
);

tdc#(.INITIAL(INITIAL), .DELAY(DELAY)) tdc1(
    .clk(S_AXI_ACLK),
    .reset(S_AXI_ARESETN),
    .delay(tdcOut)
);

virus#(.SIZE(VIRUS_B_SIZE)) virus1(
    .out(virusOut),
    .enable(virusEnQ)
);

// Memory input and output
reg  memWe;
reg  [C_S_AXI_ADDR_WIDTH-1:0] memAddr;
reg  [MEM_WIDTH-1:0] memDi;
wire [MEM_WIDTH-1:0] memDo;

//RAM#(.DEPTH(ABS_READ_MAX)) ram1(
//    .clk(S_AXI_ACLK),
//    .we(memWe),
//    .a(memAddr),
//    .di(memDi),
//    .do(memDo)
//);

// State machine
parameter IDLE=0, READ=1, READ_ONCE=2, READ_RAMP=3, RMS=4, C_RD1=5, C_RD0=6, C_RD2=7, C_RD_DELAY=8;
reg [3:0] state, nextState;


reg [C_S_AXI_DATA_WIDTH-1:0] counterD, counterQ, virusCounterD, virusCounterQ, freqD, freqQ,
           maxD, maxQ, /*ppD, ppQ,*/ oneMask;
reg [DELAY-1:0] tdcClean;
reg [6:0] total/*, diffMaxD, diffMaxQ, diffMinD, diffMinQ*/;
reg [C_S_AXI_DATA_WIDTH-1:0] rmsAccD, rmsAccQ, sumAccD, sumAccQ, r_counterD, r_counterQ;
reg [64-1:0] varD, varQ, tmp_value, meanD, meanQ, tmpMean, tmpVar;


integer i;
always @ * begin
    counterD = counterQ;
    virusCounterD = virusCounterQ;
    freqD = freqQ;
    maxD = maxQ;
    nextState = state;
    virusEnD = virusEnQ;
//    virusMaskD = virusMaskQ;
//    virusFlagD = virusFlagQ;
//    diffMaxD = diffMaxQ;
//    diffMinD = diffMinQ;
//    ppD = ppQ;
    rmsAccD = rmsAccQ;
    sumAccD = sumAccQ;
    r_counterD = r_counterQ;
    meanD = meanQ;
    varD = varQ;
    tmp_value = 0;
    tmpMean = 0;
    tmpVar = 0;
    challengeD = challengeQ;
    rdData = 0;
    total = 0;
    memWe = 0;
    memAddr = 0;
    memDi = 0;
    trigger = 0;
    oneMask = -1;   // Mask of all 1's (C_S_AXI_DATA_WIDTH wide)
    
    case(state)
        IDLE:begin
            virusEnD = 0;
//            virusFlagD = 0;
            if(rd && rdAddr < (ABS_READ_MAX<<2))begin
				// The memory is being read from
                memAddr = rdAddr;
                rdData = memDo;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1; 
             end else if(rd && rdAddr == PP_ADDR)begin
				// The peak-to-peak response is being measured
//                rdData = ppQ;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
            end else if(rd && rdAddr == RMS_ADDR)begin
				// The sum-of-squared measurements is being measured
                rdData = rmsAccQ;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
            end else if(rd && rdAddr == SUM_ADDR)begin
				// The sum of measurements is being measured
                rdData = sumAccQ;
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
            end else if(rd && rdAddr == MEAN_ADDR)begin
                // The mean part of the response is being measured
                tmpMean = meanQ >> ($clog2(RUNS));
                rdData = tmpMean[C_S_AXI_DATA_WIDTH-1:0];
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
            end else if(rd && rdAddr == VAR_ADDR)begin
                // The variance part of the response is being measured
                // Since var reg actually stores sum[X^2], compute actual
                // variance now
                tmpVar = varQ >> ($clog2(RUNS));      // tmpVar = E[X^2]
                tmpMean = meanQ >> ($clog2(RUNS));    // tmpMean = E[X]
                tmp_value = tmpVar - (tmpMean * tmpMean);
                rdData = tmp_value[C_S_AXI_DATA_WIDTH-1:0];
                rdData[C_S_AXI_DATA_WIDTH-1] = 1;
            end else if(wr) begin
                if(wrAddr == REC_ADDR)begin
                    counterD = 0;
                    r_counterD = 0;
                    rmsAccD = 0;
                    sumAccD = 0;
                    meanD = 0;
                    varD = 0;
                    virusCounterD = 0;
                    virusEnD = 0;
//                    virusFlagD = 0;
                    trigger = 1;    // Trigger scope when we start recording
                    if(wrData == 0)begin
						// Read at a particular frequency response
                        nextState = READ;
                    end else if (wrData == 1) begin
						// Read a step response
                        nextState = READ_ONCE;
                    end else if (wrData == 2) begin
						// Read the response from a ramp function
                        nextState = READ_RAMP;
                    end else begin
						// Read a challenge response
                        nextState = C_RD0;
                    end
                end else if(wrAddr == FREQ_ADDR) begin
					// Write the frequency to be measured
                    freqD = wrData;
                end else if(wrAddr == READ_MAX_ADDR)begin
					// Write the number of measurements to perform
                    maxD = wrData;
//                end else if(wrAddr >= VIRUS_ADDR && wrAddr < VIRUS_ADDR + 4*4)begin
					// Write to the virus bitmask. Note that this covers
					// several addresses
//                    virusMaskD = (virusMaskQ & ~(oneMask << ((wrAddr - VIRUS_ADDR)<<3))) | (wrData << ((wrAddr - VIRUS_ADDR)<<3));
                end else if(wrAddr >= CHALLENGE_ADDR && wrAddr < (CHALLENGE_ADDR + (CHALLENGE_WIDTH>>3)))begin
					// Write to the challenge. Note that this covers several
					// addresses
                    challengeD = (challengeQ & ~(oneMask << ((wrAddr - CHALLENGE_ADDR)<<3))) | (wrData << ((wrAddr - CHALLENGE_ADDR)<<3));
                end
            end
        end
        READ:begin
			// This state performs a read at the frequency stored in the freq
			// register
            if(virusCounterQ == (freqQ-1))begin
                virusEnD = ~virusEnQ;
                virusCounterD = 0;
            end else begin
                virusCounterD = virusCounterQ + 1;
            end
            
//            if(virusFlagQ == 1)begin
//                virusEnD = virusMaskQ;
//            end else begin
//                virusEnD = 0;
//            end
            
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                
                // Give total a value so that we can simulate
                if(SIM != 0)begin
                    total = SIM;
                end
                
                rmsAccD = rmsAccQ + (total * total);
                sumAccD = sumAccQ + total;
                
                // Decide if this is a new min or max
//                if (total > diffMaxQ) begin
//                    diffMaxD = total;
//                end
//                if (total < diffMinQ) begin
//                    diffMinD = total;
//                end
                
                // Write to the memory
//                memWe = 1;
//                memAddr = counterQ << 2;
//                memDi = total;
                counterD = counterQ + 1;
            end else begin
                // Write to the PP register
                counterD = 0;
//                diffMaxD = 0;
//                diffMinD = 'h3f;
//                ppD = (diffMaxQ - diffMinQ);
                nextState = IDLE;
            end
        end
        C_RD0:begin
            tmp_value = (rmsAccQ - ((sumAccQ * sumAccQ)>>$clog2(ABS_READ_MAX)));
            meanD = meanQ + tmp_value;
            // Var register just accumulates E[X^2] while running
            varD = varQ + (tmp_value * tmp_value);
            r_counterD = r_counterQ + 1;
            if(r_counterQ < RUNS)begin
                rmsAccD = 0;
                sumAccD = 0;
                virusCounterD = 0;
                counterD = 0;
//                virusFlagD = 0;
                virusEnD = 0;
                nextState = C_RD_DELAY;
            end else begin
                nextState = IDLE;
            end
        end
        C_RD_DELAY:begin
            if (counterQ < (ABS_READ_MAX))begin
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = C_RD1;
            end
        end
        C_RD1:begin
			// This state performs a read with the challenge in the challenge
			// register
            if(virusCounterQ < CHALLENGE_WIDTH-1)begin
                virusCounterD = virusCounterQ + 1;
            end else begin
                virusCounterD = 0;
            end
            
            virusEnD = challengeQ[virusCounterQ];
            
            //virusFlagD = challengeQ[CHALLENGE_WIDTH-13];
            //challengeD = {challengeQ[CHALLENGE_WIDTH-12] ^ challengeQ[CHALLENGE_WIDTH-13] ,challengeQ[CHALLENGE_WIDTH-1:1]};
            
//            if(virusFlagQ == 1)begin
//                virusEnD = virusMaskQ;
//            end else begin
//                virusEnD = 0;
//            end
            
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                
                // Give total a value so that we can simulate
                if(SIM != 0)begin
                    total = SIM - counterQ[0];
                end
                
                rmsAccD = rmsAccQ + (total * total);
                sumAccD = sumAccQ + total;
                
                // Decide if this is a new min or max
//                if (total > diffMaxQ) begin
//                    diffMaxD = total;
//                end
//                if (total < diffMinQ) begin
//                    diffMinD = total;
//                end
                
                // Write to the memory
//                memWe = 1;
//                memAddr = counterQ << 2;
//                memDi = total;
                counterD = counterQ + 1;
            end else begin
                // Write to the PP register
                counterD = 0;
//                diffMaxD = 0;
//                diffMinD = 'h3f;
//                ppD = (diffMaxQ - diffMinQ);
//                virusFlagD = 0;
                virusEnD = 0;
                nextState = C_RD2;
            end
        end
        C_RD2:begin
            if (counterQ < (ABS_READ_MAX))begin
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = C_RD0;
            end
        end
        READ_ONCE:begin
			// This state performs a read with a step response. The power virus
			//will turn on after the number of clock periods stored in the
			//frequency register
            if(virusCounterQ >= freqQ-1)begin
                virusEnD = 1;
            end else begin
                virusCounterD = virusCounterQ + 1;
            end
            
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                // Write to the memory
                memWe = 1;
                memAddr = counterQ << 2;
                memDi = total;
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = IDLE;
            end
        end
/*        READ_RAMP:begin
			// This state performs a read for a ramp function
            if(virusCounterQ >= freqQ-1)begin
                virusCounterD = 0;
                // If we haven't reached the final mask, add another 1 (turn another group on)
                if(virusEnQ < virusMaskQ)begin
                    if (virusEnQ == 0)begin
                        virusEnD = 1;
                    end else begin
                        virusEnD = (virusEnQ << 1) | 1;
                    end
                end
            end else begin
                virusCounterD = virusCounterQ + 1;
            end
            
            if(counterQ < maxQ)begin
                tdcClean[0] = tdcOut[0];
                // Clean tdcOut to eliminate glitches
                for(i = 1; i < DELAY; i = i + 1)begin
                    tdcClean[i] = tdcOut[i-1] && tdcOut[i];
                end
                total = 0;
                // Find top bit of tdc
                for(i = 0; i < DELAY; i = i + 1)begin
                    total = total + tdcClean[i];
                end
                // Write to the memory
                memWe = 1;
                memAddr = counterQ << 2;
                memDi = total;
                counterD = counterQ + 1;
            end else begin
                counterD = 0;
                nextState = IDLE;
            end
        end*/
    endcase
end

always @ (posedge S_AXI_ACLK)begin
    if(S_AXI_ARESETN == 1)begin
        state <= nextState;
        counterQ <= counterD;
        r_counterQ <= r_counterD;
        freqQ <= freqD;
//        virusMaskQ <= virusMaskD;
        maxQ <= maxD;
//        diffMaxQ <= diffMaxD;
//        diffMinQ <= diffMinD;
//        ppQ <= ppD;
        rmsAccQ <= rmsAccD;
        sumAccQ <= sumAccD;
        meanQ <= meanD;
        varQ <= varD;
        challengeQ <= challengeD;
    end else begin
        state <= IDLE;
        counterQ <= 0;
        r_counterQ <= 0;
        freqQ <= 0;
//        virusMaskQ <= 0;
        maxQ <= 0;
//        diffMaxQ <= 0;
//        diffMinQ <= 'h3f;               // This stores a min value, so initialize it to max
//        ppQ <= 0;
        rmsAccQ <= 0;
        sumAccQ <= 0;
        meanQ <= 0;
        varQ <= 0;
        challengeQ <= 0;
    end
end

always @ (posedge clk2) begin
    if(S_AXI_ARESETN == 1)begin
        virusCounterQ <= virusCounterD;
//        virusFlagQ <= virusFlagD;
        virusEnQ <= virusEnD;
    end else begin
        virusCounterQ <= 0;
//        virusFlagQ <= 0;
        virusEnQ <= 0;
    end
end

endmodule
