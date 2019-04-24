require "./keepTime.rb"

# file = File.open("HighScores.txt", "a+") #a+ means add to what already exists. Just opens file
# puts "What is your favorite color?"
# HighScore = gets.chomp
# file.puts("Your fav colour is #{color} ")
# file.close #closes file when done
puts "Enter you name: "
name = gets.chomp.capitalize

score = 120
name_score = Array.new
x, y = 0, 0
name_score.sort! {|score1,score2| score2[1] <=> score1[1]}
high_score = File.open("HighScores.txt", "a+")
p high_score


# arr.push(current_player)
# arr.each {|player, score| puts player[score]}
# puts current_player[score]
# file = File.open("HighScores.txt", "a+") {|scores| scores.puts current_player} #curly brackets opens and closes the file in one.

# lines = File.foreach("HighScores.txt").first(3) #prints first 5 lines of file
# puts lines

# go through hash and print highest 5 scores
