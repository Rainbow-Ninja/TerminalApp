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

    def move(current_pos, direction)

        if (direction === "up")
            if (@board[@posA-1][@posB] == " ")

                @posA = @posA-1
                @current_pos = @board[@posA][@posB]
                @board[@posA][@posB] = "c"
                print_board()
            end

        elsif (direction === "down")

            if (@board[@posA-1][@posB] == " ")

                @posA = @posA-1
                @current_pos = @board[@posA][@posB]
                @board[@posA][@posB] = "c"
                print_board()
            end

        elsif (direction === "left")

            if (@board[@posA-1][@posB] == " ")

                @posA = @posA-1
                @current_pos = @board[@posA][@posB]
                @board[@posA][@posB] = "c"
                print_board()
            end

        elsif (direction === "right")

            if (@board[@posA-1][@posB] == " ")

                @posA = @posA-1
                @current_pos = @board[@posA][@posB]
                @board[@posA][@posB] = "c"
                print_board()
            end

        end

        return @board
    end

end