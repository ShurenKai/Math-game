require "./players"
require "./questions"

class Game

  attr_accessor :current_question, :game_running, :current_player, :inquitioner, :turns, :player_1, :player_2

  def initialize
    @turns = 0
    @current_player = ""
    @inquitioner = ""
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
    @game_running = false
    @current_question = Question.new
  end

  def give_q
    puts current_question.correct_answer
  end
  
  def set_current
    if @turns % 2 == 0 || (!@turns == 0)
      @current_player = player_2
      @inquitioner = player_1
    else
      @current_player = player_1
      @inquitioner = player_2
    end
  end

  def game_start
    if @game_running == false
      @game_running = true
      puts "Let the games begin!"
      set_current
      while @current_player.lives != 0 do
        current_round
        set_current
      end
    else
      puts "You have a game currently running"
    end
  end

  def current_round
    puts "#{@inquitioner.name}: #{@current_question.question}"
    @current_player.player_answer = gets.chomp
    @turns += 1
    if @current_player.player_answer.to_i != @current_question.correct_answer.to_i
      @current_player.lives -= 1
      @current_question = Question.new
      puts "#{@inquitioner.name}: Ah, that was incorrect, RIP"
    else
      puts "#{@inquitioner.name}: Hey, you got it right!" 
    end

    if @current_player.lives == 0
      puts "-----GAME OVER-----"
      puts "Good bye! Thanks for playing! :D "
      @game_running = false
      puts " #{@inquitioner.name} wins with a score of #{@inquitioner.lives.to_i}/3"
    else
      puts "P1: #{player_1.lives.to_i}/3 vs P2: #{player_2.lives.to_i}/3"
      puts "-----NEW TURN-----"
      @current_question = Question.new
    end
  end
end