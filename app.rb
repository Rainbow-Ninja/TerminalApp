class String
    def cyan; "\e[36m#{self}\e[0m" end
    def red; "\e[31m#{self}\e[0m" end
    def blue; "\e[34m#{self}\e[0m" end
    def green; "\e[32m#{self}\e[0m" end
    def yellow; "\e[32m#{self}\e[0m" end
end

require 'io/console'
require './mazes.rb'
require './game.rb'

game = MazeGame.new($mazes["maze1"])
game.print_board()
game.input()
