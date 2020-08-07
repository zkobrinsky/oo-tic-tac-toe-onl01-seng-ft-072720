require "pry"

class TicTacToe

  WIN_COMBINATIONS = [
    [0, 1, 2], #top row
    [3, 4, 5], #middle row
    [6, 7, 8], #bottom row
    [0, 3, 6], #left column
    [1, 4, 7], #middle column
    [2, 5, 8], #right column
    [0, 4, 8], #top-left to bottom-right diagonal
    [2, 4, 6] #top-right to bottom-left diagonal
  ]

  def initialize
    @board = Array.new(9, " ")
  end

  def display_board

    #attempt at abstraction
    # @board.each_with_index do |value, i|
    #   if (i % 3) == 0 && i < 7
    #     # binding.pry
    #     puts " #{@board[i-2..i].join(" | ")} "
    #     puts "-----------"
    #   else if (i % 3) == 0
    #     puts " #{@board[i-2..i].join(" | ")} "
    #
    #   end
    # end

        # literal solution:
        puts " #{@board[0..2].join(" | ")} "
        puts "-----------"
        puts " #{@board[3..5].join(" | ")} "
        puts "-----------"
        puts " #{@board[6..8].join(" | ")} "
  end

  def input_to_index(string)

  end

end

# binding.pry
