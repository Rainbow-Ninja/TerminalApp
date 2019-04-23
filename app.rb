require 'io/console'
require './mazeBoards.rb'

class String
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end
end


board1 = Array.new

board1[0] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]
board1[1] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
board1[2] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
board1[3] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
board1[4] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, " ", " ","-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
board1[5] = ["c".red, "o", "o", "o", "o", "o", "o", "|".cyan, "n".red, "n".blue, "n".green, "n".red, "|".cyan, "o", "o", "o", "o", "o", "o", " "]
board1[6] = ["|".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan,"-".cyan,"-".cyan,"o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "|".cyan]
board1[7] = ["|".cyan, "o", "|".cyan, "o", "o", "o", "o", "o", "o", "o", "o","o","o","o", "o", "o", "o", "|".cyan, "o", "|".cyan]
board1[8] = ["|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "-".cyan, "o", "|".cyan, "o", "-".cyan, "-".cyan, "o", "|".cyan]
board1[9] = ["|".cyan, "O".red, "o", "o", "o", "|".cyan, "o", "o", "o", "o", "o","o","o","o", "|".cyan, "o", "o", "o", "O".red, "|".cyan]
board1[10] = ["-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan,"-".cyan]


game = MazeGame.new(board1)
game.print_board


STDIN.raw!

char = STDIN.getc.chr

if char == "\e" then
    char << STDIN.read_nonblock(3) rescue nil
    char << STDIN.read_nonblock(2) rescue nil

    case char
        when 'q' then exit
        when "\e[A"
            game.move(@current_pos, "up")
        when "\e[B"
            game.move(@current_pos, "down")
        when "\e[C"
            game.move(@current_pos, "right")
        when "\e[D"
            game.move(@current_pos, "left")
    end

end

STDIN.cooked!




