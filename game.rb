$level = 1

class MazeGame
    attr_reader :board

    def initialize(board) #setting up the board at the start of the game, putting your character at the start of the maze
        @@board = board
        @@posA = 1
        @@posB = 0
        @@current_pos = @@board[@@posA][@@posB]
        @@board[@@posA][@@posB] = "\xF0\x9F\x9A\x98" #setting your character to the car emoji
    end

    def print_board() #prints out board with level
        system("clear")
        puts @@board.map{ |board| board.join(' ').green }
        puts "\nLevel #{$level}"
        puts "\nHit 'q' to quit\n"
    end

    def game_over #when your char reaches the /end spot on the board the congrats msg is shown
        if @@board[9][20] == "\xF0\x9F\x9A\x98"
            congrats_msg
        end
    end

    def input() #game controls
        loop do
            case $stdin.getch
                when 'q' then exit
                when "\e"
                case $stdin.getch
                    when '['
                    case $stdin.getch
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

       @@board[@@posA][@@posB] = " " #leave nothing where you were

        if (direction === "right" && (@@board[@@posA][@@posB + 1] == " " || @@board[@@posA][@@posB + 1] == "\xF0\x9F\x90\xB6")) #check the position to the right is clear or the puppy
            @@posB += 1

        elsif (direction === "left" && @@board[@@posA][@@posB - 1] == " ")
            @@posB -= 1 #check the position to the left is actually clear

        elsif (direction === "up" && @@board[@@posA - 1][@@posB] == " ")
            @@posA -= 1 #check the position up is clear

        elsif (direction === "down" && @@board[@@posA + 1][@@posB] == " ")
            @@posA += 1 #check the position /down is clear
        end

        @@current_pos = @@board[@@posA][@@posB] #if position is clear, move there
        @@board[@@posA][@@posB] = "\xF0\x9F\x9A\x98" #print character in new position
        
        print_board()
        game_over #check if it's the \end of game
        return @@board
    end
end