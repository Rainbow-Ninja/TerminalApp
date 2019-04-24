require 'io/console'
require './game.rb'
require './mazes.rb'

class String
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end
end


board1 = Array.new

board1[0] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]
board1[1] = ["c".red, " ", " ", " ", " ", "|".cyan, " ", " ", " ", " ", " "," "," "," ", "|".cyan, " ", " ", " ", " ", "|".cyan]
board1[2] = ["|".cyan, " ", "-".cyan, "-".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, " ", "|".cyan]
board1[3] = ["|".cyan, " ", "|".cyan, " ", " ", " ", " ", " ", " ", " ", " "," "," "," ", " ", " ", " ", "|".cyan, " ", "|".cyan]
board1[4] = ["|".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, " ", "-".cyan, "-".cyan, " ", " ","-".cyan,"-".cyan," ", "-".cyan, "-".cyan, " ", "|".cyan, " ", "|".cyan]
board1[5] = ["|".cyan, " ", " ", " ", " ", " ", " ", "|".cyan, "n".red, "n".blue, "n".green, "n".red, "|".cyan, " ", " ", " ", " ", " ", " ", " "]
board1[6] = ["|".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, " ", "-".cyan, "-".cyan, "-".cyan, "-".cyan,"-".cyan,"-".cyan," ", "-".cyan, "-".cyan, " ", "|".cyan, " ", "|".cyan]
board1[7] = ["|".cyan, " ", "|".cyan, " ", " ", " ", " ", " ", " ", " ", " "," "," "," ", " ", " ", " ", "|".cyan, " ", "|".cyan]
board1[8] = ["|".cyan, " ", "-".cyan, "-".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, " ", "|".cyan, " ", "-".cyan, "-".cyan, " ", "|".cyan]
board1[9] = ["|".cyan, " ", " ", " ", " ", "|".cyan, " ", " ", " ", " ", " "," "," "," ", "|".cyan, " ", " ", " ", " ", "|".cyan]
board1[10] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]


game = MazeGame.new(board1)
game.print_board()
game.input()



