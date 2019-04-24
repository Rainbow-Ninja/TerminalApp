$level = 1

class MazeGame
    attr_reader :board

    def initialize(board)
        @board = board
        @posA = 1
        @posB = 0
        @current_pos = @board[@posA][@posB]
    end

    def print_board()
        system("clear")
        puts @board.map{ |el| el.join(' ') }
        puts "\nLevel #{$level}"
        puts "\nHit 'q' to quit\n"
    end

    def input()
        loop do
            case $stdin.getch
                when 'q' then exit
                when "\c?" then puts 'backspace'
                when "\e"
                case $stdin.getch
                    when '['
                    case $stdin.getch
                        when 'A' then move(@current_pos, "up")
                        when 'B' then move(@current_pos, "down")
                        when 'C' then move(@current_pos, "right")
                        when 'D' then move(@current_pos, "left")
                    end
                end
            end
        end
    end

    def move(current_pos, direction)

        @board[@posA][@posB] = " "

        if (direction === "right" && @board[@posA][@posB + 1] == " ")
            @posB = @posB += 1
        end

        if (direction === "left" && @board[@posA][@posB - 1] == " ")
            @posB = @posB -= 1
        end

        if (direction === "up" && @board[@posA - 1][@posB] == " ")
            @posA = @posA -= 1
        end

        if (direction === "down" && @board[@posA + 1][@posB] == " ")
            @posA = @posA += 1
        end

        @current_pos = @board[@posA][@posB]
        @board[@posA][@posB] = "\xF0\x9F\x9A\x98"

        print_board()

        return @board
    end

end