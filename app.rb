class String #instead of including teh entire gem of colourise and slowing eveything down we just added the few coloured we used
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end
    def yellow; "\e[32m#{self}\e[0m" end
end

require 'io/console'
require './mazes.rb'
require './game.rb'
require './congratsMsg.rb'
require './welcomePage.rb'

welcome
game = MazeGame.new($mazes[$maze_array[0]])
game.print_board()
game.input()