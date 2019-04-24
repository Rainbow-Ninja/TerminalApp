require "./keepTime.rb"

# file = File.open("HighScores.txt", "a+") #a+ means add to what already exists. Just opens file
# puts "What is your favorite color?"
# HighScore = gets.chomp
# file.puts("Your fav colour is #{color} ")
# file.close #closes file when done
puts "Enter you name: "
name = gets.chomp.capitalize
score = 120
current = [name, score]

name_score = Array.new
name_score = [["jo", 120,], ["matt", 70], ["Roh", 130], ["Dave", 50]]
name_score.push(current)
x, y = 0, 0
name_score.sort! {|score1,score2| score2[1] <=> score1[1]}

#file = File.open("HighScores.txt", "a+") {|scores| scores.puts current_player}

#File.open("HighScores.txt", "a+") {|file| file.puts current} #write score into file
#p name_score

File.open("HighScores.txt", "a+") { |file| file.puts "#{name_score}"} #push name_score into file
#line = File.foreach("HighScores.txt")#.first(5) #prints first 5 lines
#name_score.sort! {|score1,score2| score2[1] <=> score1[1]}
#puts line.first(5)
count = 0
fileObj = File.open("HighScores.txt", "r")
while (count < 5 && line = fileObj.gets.chomp)
  print (line)
  print "................"
  print (line)
  puts " "
  count += 1
end
fileObj.close

# arr.push(current_player)
# arr.each {|player, score| puts player[score]}
# puts current_player[score]
# file = File.open("HighScores.txt", "a+") {|scores| scores.puts current_player} #curly brackets opens and closes the file in one.

# lines = File.foreach("HighScores.txt").first(3) #prints first 5 lines of file
# puts lines

# go through hash and print highest 5 scores
