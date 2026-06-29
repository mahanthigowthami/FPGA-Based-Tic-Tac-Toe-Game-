module tic_tac_toe_game(
    input clk,
    input reset,
    input play,
    input pc,
    input [3:0] player_pos,
    input [3:0] computer_pos,
    output reg [1:0] winner,
    output reg illegal,
    output reg draw
);

reg [1:0] board [0:8];
reg turn;
integer i;

// ================= RESET + MOVE =================
always @(posedge clk or posedge reset)
begin
    if(reset)
    begin
        for(i=0;i<9;i=i+1)
            board[i] <= 2'b00;

        winner <= 2'b00;
        illegal <= 1'b0;
        draw <= 1'b0;
        turn <= 1'b0;
    end
    else
    begin
        illegal <= 1'b0;

        // PLAYER MOVE
        if(play && turn==0)
        begin
            if(player_pos>=1 && player_pos<=9)
            begin
                if(board[player_pos-1]==2'b00)
                    board[player_pos-1] <= 2'b01;
                else
                    illegal <= 1'b1;
            end
            turn <= 1'b1;
        end

        // COMPUTER MOVE
        else if(pc && turn==1)
        begin
            if(computer_pos>=1 && computer_pos<=9)
            begin
                if(board[computer_pos-1]==2'b00)
                    board[computer_pos-1] <= 2'b10;
                else
                    illegal <= 1'b1;
            end
            turn <= 1'b0;
        end
    end
end
// ================= WINNER CHECK (COMBINATIONAL) =================
always @(*)
begin
    winner = 2'b00;
    if(board[0]!=0 && board[0]==board[1] && board[1]==board[2])
        winner = board[0];
    else if(board[3]!=0 && board[3]==board[4] && board[4]==board[5])
        winner = board[3];
    else if(board[6]!=0 && board[6]==board[7] && board[7]==board[8])
        winner = board[6];
    else if(board[0]!=0 && board[0]==board[3] && board[3]==board[6])
        winner = board[0];
    else if(board[1]!=0 && board[1]==board[4] && board[4]==board[7])
        winner = board[1];
    else if(board[2]!=0 && board[2]==board[5] && board[5]==board[8])
        winner = board[2];
    else if(board[0]!=0 && board[0]==board[4] && board[4]==board[8])
        winner = board[0];
    else if(board[2]!=0 && board[2]==board[4] && board[4]==board[6])
        winner = board[2];
end
// ================= DRAW CHECK =================
always @(*) begin
    if( board[0]!=0 && board[1]!=0 && board[2]!=0 &&
        board[3]!=0 && board[4]!=0 && board[5]!=0 &&
        board[6]!=0 && board[7]!=0 && board[8]!=0 &&
        winner==0 )
        draw = 1'b1;
    else
        draw = 1'b0;
end
endmodule