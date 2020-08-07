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

  def move(move_location, input)
    @board[move_location] = input.to_s.capitalize

    # attempt at additional functionality
    # if move_location > 8 || move_location < 0
    #   puts "invalid move"
    # elsif input != "X" || input != "O"
    #   puts "Did you mean X or O?"
    # else
    # binding.pry
    # @board[move_location] = input.to_s.capitalize
    # end
  end

  def position_taken?(index)
    @board[index] != " " && index.between?(0,8) ? true : false
  end

  def valid_move?(index)
    @board[index] == " " && index.between?(0,8) ? true : false
  end

  def turn_count
    @board.count {|index| index != " "}
  end

  def current_player
    self.turn_count % 2 == 0 ? "X" : "O"
  end

  def turn
    puts "Please enter a number (1-9):"
    move = gets.chomp
    move = self.input_to_index(move)

    if self.valid_move?(move)
      xo = self.current_player
      self.move(move, xo)
      self.display_board
    else
      puts "invalid"
      move = gets.chomp
    end

  end

    # if self.valid_move?(move)
    #   xo = self.current_player
    #   self.move(move, xo)
    #   self.display_board
    # else
    #   puts "invalid"
    #   move = gets.chomp
    # end
    # binding.pry


end

# binding.pry
