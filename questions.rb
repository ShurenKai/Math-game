class Question

  attr_reader :correct_answer, :question

  def initialize
    @num1 = rand(1..20).to_i
    @num2 = rand(1..20).to_i
    @question = "What is #{@num1} + #{@num2}?"
    @correct_answer = @num1 + @num2
  end
end

# quiza = Question.new
# puts quiza.question
# puts quiza.correct_answer