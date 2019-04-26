def welcome
    system("clear")
    welcome = "\nWelcome to\n\n".each_char {|c| print c.red ; sleep(0.4) }
    welcome_arr = [
        "               __  __   ___                       .--.   _..._              ",
        "              |  |/  `.'   `.                     |__| .'     '.   .--./)   ",
        "              |   .-.  .-.   '                    .--..   .-.   . /.''\\    ",
        "         __   |  |  |  |  |  |    __              |  ||  '   '  || |  | |   ",
        "      .:--.'. |  |  |  |  |  | .:--.'.  .--------.|  ||  |   |  | \`-' /    ",
        "     / |   \  ||  |  |  |  |  |/ |  \ | |____      ||  ||  |   |  | /(''`     ",
        "     `-'__ | ||  |  |  |  |  |`- __ | |     /   / |  ||  |   |  | \ '---.   ",
        "      .'.''| ||__|  |__|  |__| .'.''| |   .'   /  |__||  |   |  |  /'""'.\  ",
        "     / /   | |_               / /   | |_ /    /___    |  |   |  | ||   || ",
        "     \ \._,\ '/                     \ \._,\ '/|         |   |  |   |  | \'. __//  ",
        "      `--'  `-                 `--'  `- |_________|   '--'   '--'  `'---'   "
    ]

    welcome_arr.each {|line| puts line.cyan; sleep(0.5)}

    sleep(5)
    system("clear")
    puts "It's been a long day!\n\n".center(45)
    puts "Use the #{"arrow keys".red} to drive home through\n\n".center(55)
    puts "the maze to get home and cuddle your puppy #{$goal_icon}".center(45)
    sleep(7)
end
