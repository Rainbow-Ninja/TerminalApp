def game_over(status)

    if (status === "won")

        congrats_msg()
        system("clear")
        exit

    elsif (status === "quit")

        system "clear"
        puts "\n\n"
        puts "Thanks for playing!".center(100)
        puts "Game over".center(100)
        puts "\n\n\n\n"
        exit

    end
end