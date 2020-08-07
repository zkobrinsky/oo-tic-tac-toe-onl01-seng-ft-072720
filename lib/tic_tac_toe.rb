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

    #more abstract solution
    @board.each.with_index(1) do |value, i|
      if (i % 3) == 0 && i < 6
        puts " #{@board[i-3..i-1].join(" | ")} "
        puts "-----------"
      elsif (i % 3) == 0
        puts " #{@board[i-3..i-1].join(" | ")} "
      end
    end

        # literal solution:
        # puts " #{@board[0..2].join(" | ")} "
        # puts "-----------"
        # puts " #{@board[3..5].join(" | ")} "
        # puts "-----------"
        # puts " #{@board[6..8].join(" | ")} "
  end

  def input_to_index(string)
    string.to_i-1
  end

end

# binding.pry
