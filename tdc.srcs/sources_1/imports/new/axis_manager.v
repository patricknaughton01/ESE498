`timescale 1ns / 1ps

module axis_manager#(parameter TDATA_WIDTH=64)(
    // Simple bus
    input   wire[TDATA_WIDTH-1:0]   wrData,
    output  reg                     wrDone,
    input   wire                    wr,
    // AxiS bus
    input   wire                    CLK,
    input   wire                    RESET_L,
    output  reg[TDATA_WIDTH-1:0]    TDATA,
    output  reg                     TLAST,
    input   wire                    TREADY,
    output  reg                     TVALID
);

parameter IDLE=0, WR=1;

reg[7:0] state, nextState;
reg[TDATA_WIDTH-1:0] dataD, dataQ;

always @ * begin
    nextState = state;
    dataD = dataQ;
    wrDone = 0;
    TDATA = 0;
    TLAST = 0;
    TVALID = 0;
    case(state)
        IDLE:begin
            if(wr)begin
                dataD = wrData;
                nextState = WR;
            end
        end
        WR:begin
            TDATA = dataQ;
            TVALID = 1;
            if(TREADY)begin
                nextState = IDLE;
                wrDone = 1;
            end
        end
    endcase
end

always @ (posedge CLK)begin
    if(RESET_L)begin
        state <= nextState;
        dataQ <= dataD;
    end else begin
        state <= IDLE;
        dataQ <= 0;
    end
end

endmodule