def game_over(status)

    if (status === "won")

        congrats_msg()

    elsif (status === "quit")

        system "clear"
        puts "Game over.\n\n"
        exit

    end

end