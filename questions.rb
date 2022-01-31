class Questions

  def initialize
    @correct_answer = 0
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def create_question
    @correct_answer = num1 + num2
    puts "What is #{@num1} + #{@num2}?"
  end

end