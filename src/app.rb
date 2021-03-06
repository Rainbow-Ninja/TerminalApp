$level = 1
$player_icon = "\xF0\x9F\x9A\x98"
$goal_icon = "\xF0\x9F\x90\xB6"

require 'io/console'
require_relative './colors.rb'
require_relative './mazes.rb'
require_relative './gameOver.rb'
require_relative './game.rb'
require_relative './congratsMsg.rb'
require_relative './welcomePage.rb'

welcome()
game = MazeGame.new( $mazes[$maze_array[0]] )
