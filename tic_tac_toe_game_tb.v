`timescale 1ns/1ps
module tic_tac_toe_tb;
reg clk;
reg reset;
reg play;
reg pc;
reg [3:0] player_pos;
reg [3:0] computer_pos;
wire [1:0] winner;
wire illegal;
wire draw;
// Instantiate DUT
tic_tac_toe_game uut (
    .clk(clk),
    .reset(reset),
    .play(play),
    .pc(pc),
    .player_pos(player_pos),
    .computer_pos(computer_pos),
    .winner(winner),
    .illegal(illegal),
    .draw(draw));
// Clock generation (10ns period)
always #5 clk = ~clk;
initial begin
    // Initialize
    clk = 0;
    reset = 1;
    play = 0;
    pc = 0;
    player_pos = 0;
    computer_pos = 0;
    // Apply reset
    #20;
    reset = 0;
    // =========================
    // PLAYER: position 1
    // =========================
    #10;
    player_pos = 4'd1;
    play = 1;
    #10 play = 0;
    // =========================
    // COMPUTER: position 5
    // =========================
    #20;
    computer_pos = 4'd5;
    pc = 1;
    #10 pc = 0;
    // =========================
    // PLAYER: position 2
    // =========================
    #20;
    player_pos = 4'd2;
    play = 1;
    #10 play = 0;
    // =========================
    // COMPUTER: position 8
    // =========================
    #20;
    computer_pos = 4'd8;
    pc = 1;
    #10 pc = 0;
    // =========================
    // PLAYER: position 3
    // This should create winner (1,2,3)
    // =========================
    #20;
    player_pos = 4'd5;
    play = 1;
    #10 play = 0;
    // Wait to observe winner
    #40;
    // =========================
    // Test illegal move
    // Try to overwrite position 1
    // =========================
    player_pos = 4'd1;
    play = 1;
    #10 play = 0;
    #40;
    $stop;
end
endmodule