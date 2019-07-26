class Player
  #TO DO : la classe a 2 attr_accessor, son nom, sa valeur (X ou O). Elle a un attr_writer : il a gagné ?
  attr_accessor :name, :symbol
  attr_writer :game_state
  
  def initialize()
    #TO DO : doit régler son nom, sa valeur, son état de victoire
    puts "Bonjour, c'est quoi ton nom?"
    @name = gets.chomp()
    puts "Choisis ton symbole : 'X' or 'O' ?"
    @symbol = gets.chomp()
    @game_state = "Jeu en cours"
  end

end