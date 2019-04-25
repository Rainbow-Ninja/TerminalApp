def game_over(status)

    if (status === "won")

        congrats_msg()
        system("clear")
        exit

    elsif (status === "quit")

        system "clear"
        puts "Thanks for playing!".cyan
        puts "   Game over\n\n".cyan
        exit

    end
end