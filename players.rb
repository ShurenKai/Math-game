class Player
  attr_accessor :lives, :name, :player_answer

  def initialize(name)
    @name = name
    @lives = 3
    @player_answer = 0
  end 
end