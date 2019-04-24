# ----------------------------------------------------------------
# writing to a file
# ----------------------------------------------------------------

# file = File.open("HighScores.txt", "a+") #a+ means add to what already exists. Just opens file
# puts "What is your favorite color?"
# HighScore = gets.chomp
# file.puts("Your fav colour is #{color} ")
# file.close #closes file when done
name = "Jo"
score = 120
file = File.open("HighScores.txt", "a+") {|score| score.puts "#{name}..........#{score}"} #curly brackets opens and closes the file in one.

lines = File.foreach("HighScores.txt").first(10) #prints first 5 lines of file
puts lines