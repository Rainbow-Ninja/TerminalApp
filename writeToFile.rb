require "./keepTime.rb"

# file = File.open("HighScores.txt", "a+") #a+ means add to what already exists. Just opens file
# puts "What is your favorite color?"
# HighScore = gets.chomp
# file.puts("Your fav colour is #{color} ")
# file.close #closes file when done
puts "Enter you name: "
name = gets.chomp.capitalize
score = 120
name_score = []
x, y = 0, 0
name_score[x][y]
name_score[name][score]
puts name_score
# current_player = {"name" => name, "score" => score}
# arr.push(current_player)
# arr.each {|player, score| puts player[score]}
#puts current_player[score]
# file = File.open("HighScores.txt", "a+") {|scores| scores.puts current_player} #curly brackets opens and closes the file in one.

# lines = File.foreach("HighScores.txt").first(3) #prints first 5 lines of file
# puts lines

#go through hash and print highest 5 scores
