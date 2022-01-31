class Question

  attr_reader :correct_answer, :question

  def initialize
    @num1 = rand(1..20).to_i
    @num2 = rand(1..20).to_i
  end

  def create_question
    @question = @num1 + @num2
    puts "What is #{@num1} + #{@num2}?"
  end

  def correct_answer
    puts @correct_answer = @num1 + @num2
  end
end

quiza = Question.new
puts quiza.create_question
puts quiza.correct_answer