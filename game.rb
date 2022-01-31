class Game

  attr_accessor :answer 

  def initialize
    @player_answer = gets.chomp
    @winner = ""
    @loser = ""
  end

  def outcome
    if player_answer !== answer
      lives -= 1
    end
  end


end