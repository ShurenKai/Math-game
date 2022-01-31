Important Nouns -> classes later

Players

- are assigned numbers
- lives
- loses lives upon wrong answer

Game

- takes life away upon wrong answer
- game ends when all 3 lives are taken
- winner and loser announcement
- score
- gets.chomp - answer
- turns (used for later)
- current_player [state]

Questions

- numbers are randomized based on rand(1..2)
- the answer must be the total of the 2 (.to_i)
- attr_accessor - both answer and see question
- logic for right and wrong

Game < Players < Questions

3 separate files - can require game class wherever it is needed, nothing NEEDS to be a parent of the others
