require_relative 'boardcase'
require_relative 'board'
require_relative 'player'

class Game

  def initialize
    #TO DO : créé 2 joueurs, créé un board
    @board = Board.new
    @player1 = Player.new
    @player2 = Player.new
  end

  def go
    # TO DO : lance la partie
    while @board.victory? == false && @board.draw? == false
      self.turn
    end
    puts "do you want to play again (y/n)"
    @answer = gets.chomp()
    if @answer == "y"
      Game.new.go
    end
  end

  

  def turn
    #TO DO : affiche le plateau, demande au joueur il joue quoi, vérifie si un joueur a gagné, passe au joueur suivant si la partie n'est pas finie
    
    ObjectSpace.each_object(Player) do |obj|
    @board.to_s
    puts ""
      if @board.draw? == true
        puts "it s a draw"
        break
      end
    puts "It is #{obj.name}'s turn"
    puts "What will you play?"
    puts "choose a case"
    @board.play(obj.symbol)
      if @board.victory? == true
        @board.to_s
        puts ""
        puts "#{obj.name} won"
        break
      end
    end
  end
end

