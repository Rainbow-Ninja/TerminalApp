class MazeGame
    attr_reader :board

    #Initialises the game, prints the board and waits for user input.
    def initialize(board)
        @@board = board
        @@posA = 1
        @@posB = 0
        @@current_pos = @@board[@@posA][@@posB]
        @@board[@@posA][@@posB] = $player_icon
        print_board()
        input()
    end

    #prints out board with level
    def print_board()
        # system("clear")
        puts @@board.map{ |board| board.join(' ').green }
        puts "\nLevel #{$level}"
        puts "\nPress 'q' or 'esc' to quit the game.\n"
    end

    #game input controls
    def input()
        loop do
            case STDIN.getch()
                when 'q' then game_over("quit")
                when "\e"
                case STDIN.getch()
                    when '['
                    case STDIN.getch()
                        when '' then game_over("quit")
                        when 'A' then move("up")
                        when 'B' then move("down")
                        when 'C' then move("right")
                        when 'D' then move("left")
                    end
                end
            end
        end
    end

    def move(direction)

        #make current positon an empty space
        @@board[@@posA][@@posB] = " "

        #use direction parameter to determine which way to move
        if (direction === "right" && (@@board[@@posA][@@posB + 1] === " " || @@board[@@posA][@@posB + 1] == $goal_icon))
            @@posB += 1

        elsif (direction === "left" && @@board[@@posA][@@posB - 1] === " ")
            @@posB -= 1

        elsif (direction === "up" && @@board[@@posA - 1][@@posB] === " ")
            @@posA -= 1

        elsif (direction === "down" && @@board[@@posA + 1][@@posB] === " ")
            @@posA += 1
        end

        #updates to new position based on results of above if statement.
        @@current_pos = @@board[@@posA][@@posB]

        #when reached goal run game_over method.
        if (@@current_pos == $goal_icon )
            game_over("won")
        end

        #sets the new space as the player icon.
        @@board[@@posA][@@posB] = $player_icon

        #reprints the board with the updated positions and values.
        print_board()
    end
end