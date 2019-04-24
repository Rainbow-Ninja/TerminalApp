$level = 1

class MazeGame
    attr_reader :board

    def initialize(board)
        @@board = board
        @@posA = 1
        @@posB = 0
        @@current_pos = @@board[@@posA][@@posB]
    end

    def print_board() #prints out board with level
        system("clear")
        puts @@board.map{ |board| board.join(' ') }
        puts "\nLevel #{$level}"
        puts "\nHit 'q' to quit\n"
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

        @@board[@@posA][@@posB] = " "

        if (direction === "right" && @@board[@@posA][@@posB + 1] == " ")
            @@posB += 1

        elsif (direction === "left" && @@board[@@posA][@@posB - 1] == " ")
            @@posB -= 1

        elsif (direction === "up" && @@board[@@posA - 1][@@posB] == " ")
            @@posA -= 1

        elsif (direction === "down" && @@board[@@posA + 1][@@posB] == " ")
            @@posA += 1
        end

        # if @@board[10][23] != flag {

        # }

        @@current_pos = @@board[@@posA][@@posB]
        @@board[@@posA][@@posB] = "\xF0\x9F\x9A\x98"

        print_board()

        return @@board
    end
end