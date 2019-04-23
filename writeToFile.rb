# ----------------------------------------------------------------
# writing to a file
# ----------------------------------------------------------------

file = File.open("Jonewfile.txt", "a+") #a+ means add to what already exists. Just opens file
puts "What is your favorite color?"
color = gets.chomp
file.puts("Your fav colour is #{color} ")
file.close #closes file when done
file = File.open("Jonewfile.txt", "a+") {|file| file.puts "I opened the file again"} #curly brackets opens and closes the file in one.
blue = File.open("some_file_name.txt", "w") { |file| file.puts "I wrote this with ruby!\n"}
#w means wipe the file then write to it

lines = File.foreach("Jonewfile.txt").first(5) #prints first 5 lines of file
puts lines
#file.close
# File.open("Jonewfile.txt").readlines.each do |line| #prints out whole file
# puts line
# end
# File.open("some_file_name.txt").readlines.each do |line|
# puts line
# end