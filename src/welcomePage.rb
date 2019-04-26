def welcome
    system("clear")
    welcome = "\nWelcome to\n\n".each_char {|c| print c.red ; sleep(0.4) }
    welcome_arr = ["               __  __   ___                       .--.   _..._              ","              |  |/  `.'   `.                     |__| .'     '.   .--./)   ","              |   .-.  .-.   '                    .--..   .-.   . /.''\\    ","         __   |  |  |  |  |  |    __              |  ||  '   '  || |  | |   ","      .:--.'. |  |  |  |  |  | .:--.'.  .--------.|  ||  |   |  | \`-' /    ","     / |   \  ||  |  |  |  |  |/ |  \ | |____      ||  ||  |   |  | /(''`     ","     `-'__ | ||  |  |  |  |  |`- __ | |     /   / |  ||  |   |  | \ '---.   ","      .'.''| ||__|  |__|  |__| .'.''| |   .'   /  |__||  |   |  |  /'""'.\  ","     / /   | |_               / /   | |_ /    /___    |  |   |  | ||   || ","     \ \._,\ '/                     \ \._,\ '/|         |   |  |   |  | \'. __//  ","      `--'  `-                 `--'  `- |_________|   '--'   '--'  `'---'   "]
    welcome_arr.each {|line| puts line.cyan; sleep(0.5)}

    sleep(5)
    system("clear")
    puts "          It's been a long day!\n\n"
    print "  Use the"
    print " arrow keys".red
    puts " to drive home through\n\n"
    puts "the maze to get home and cuddle your puppy #{$goal_icon}"
    sleep(7)
end
