
require_relative 'boardcase'

class Board
    include Enumerable
    #TO DO : la classe a 1 attr_accessor, une array qui contient les BoardCases
    attr_accessor :board
  
    def initialize
      #TO DO :
      #Quand la classe s'initialize, elle doit créer 9 instances BoardCases
      @board =  [*0..8].map { |i|  BoardCase.new(i).case_number }
      #Ces instances sont rangées dans une array qui est l'attr_accessor de la classe
    end
  
    def to_s
    #TO DO : afficher le plateau
  
      puts "#{@board[0..2].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[3..5].join(" | ")}"
      puts "--|---|--"
      puts "#{@board[6..8].join(" | ")}"
  
    # print @board[0..2]
    # puts ""
    # print @board[3..5]
    # puts ""
    # print @board[6..8]
    end
  
    def play(symbol)
      #TO DO : une méthode qui change la BoardCase jouée en fonction de la valeur du joueur (X, ou O)
  
      while true
      case_number = gets.chomp()
      if @board[case_number.to_i] == "X" || @board[case_number.to_i] == "O"
        puts "choose another cell, this one is already taken"
      elsif case_number.to_i > 8 || case_number.to_i < 0 || case_number != case_number.to_i.to_s
        puts "choose a cell within the board"
      else
      @board = @board.each_index.map { |e| e == case_number.to_i ? @board[e] = symbol : @board[e] }
      break
      end
    end
    end
  
    def victory?
      #TO DO : qui gagne ?
      if (@board[0] == @board[1] && @board[0] == @board[2]) || (@board[3] == @board[4] && @board[3] == @board[5]) || (@board[6] == @board[7] && @board[6] == @board[8] ) || (@board[0] == @board[3] && @board[0] == @board[6]) || (@board[1] == @board[4] && @board[1] == @board[7]) || (@board[2] == @board[5] && @board[2] == @board[8]) ||( @board[0] == @board[4] && @board[0] == @board[8]) || (@board[2] == @board[4] && @board[2] == @board[6])
        return true
      else
        return false
      end
    end
    
    def draw?
      if @board.all? { |e| e == "X" || e == "O" } 
          return true
      else 
        return false
      end
    end
  
  
  end