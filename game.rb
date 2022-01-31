require "./players"
require "./questions"

class Game

  attr_accessor :current_question, :game_running, :current_player, :inquitioner, :turns

  def initialize
    @turns = 0
    @current_player = ""
    @inquitioner = ""
    @player_1 = Player.new
    @player_2 = Player.new
    @game_running = false
    @current_question = Question.new
  end
  
  # def set_current
  #   if @turns % 2 == 0 | !@turns == 0
  #     @current_player = player_2
  #     @inquitioner = player_1
  #   else
  #     @current_player = player_1
  #     @inquitioner = player_2
  #   end
  # end

  # def game_start
  #   if @game_running == false
  #     @game_running = true
  #     puts "Let the games begin!"
  #     puts "#{@inquitioner}: #{@current_question.ask}?"
  #     answer = @current_player.player_answer
  #   else
  #     puts "You have a game currently running"
  #   end
  # end

  # def outcome
  #   answer = @current_player.player_answer
  #   if @current_player.player_answer != @current_question.correct_answer.to_i
  #     @current_player.lives -= 1
  #   end

  #   if @current_player.lives == 0
  #     puts "-----GAME OVER-----"
  #     @game_running = false
  #   else 
  #     puts "P1: #{player_1.lives.to_i}/3 vs P2: #{player_2.lives.to_i}/3"
  #     @turns += 1
  #     puts "-----NEW TURN-----"
  #     @current_question = Question.new
  #     puts "#{@inquitioner}: #{@current_question}?"
  #   end
  # end
end

game1 = Game.new
puts game1.game_running
puts game1.turns
puts game1.current_question
puts game1.player_1[lives]