#print out 'Welcome to aMazing' slowly
def welcome
    system("clear")
    print "\nW".red
    sleep(0.3)
    print "e".red
    sleep(0.3)
    print "l".red
    sleep(0.3)
    print "c".red
    sleep(0.3)
    print "o".red
    sleep(0.3)
    print "m".red
    sleep(0.3)
    print "e".red
    sleep(0.3)
    print " t".red
    sleep(0.3)
    print "o \n".red
    sleep(0.5)
    puts "               __  __   ___                       .--.   _..._              ".cyan
    sleep(0.5)
    puts "              |  |/  `.'   `.                     |__| .'     '.   .--./)   ".cyan
    sleep(0.5)
    puts "              |   .-.  .-.   '                    .--..   .-.   . /.''\\    ".blue
    sleep(0.5)
    puts "         __   |  |  |  |  |  |    __              |  ||  '   '  || |  | |   ".blue
    sleep(0.5)
    puts "      .:--.'. |  |  |  |  |  | .:--.'.  .--------.|  ||  |   |  | \`-' /    ".cyan
    sleep(0.5)
    puts "     / |   \  ||  |  |  |  |  |/ |  \ | |____      ||  ||  |   |  | /(''`     ".cyan
    sleep(0.5)
    puts "     `-'__ | ||  |  |  |  |  |`- __ | |     /   / |  ||  |   |  | \ '---.   ".blue
    sleep(0.5)
    puts "      .'.''| ||__|  |__|  |__| .'.''| |   .'   /  |__||  |   |  |  /'""'.\  ".blue
    sleep(0.5)
    puts "     / /   | |_               / /   | |_ /    /___    |  |   |  | ||   || ".cyan
    sleep(0.5)
    puts "     \ \._,\ '/                     \ \._,\ '/|         |   |  |   |  | \'. __//  ".cyan
    sleep(0.5)
    puts "      `--'  `-                 `--'  `- |_________|   '--'   '--'  `'---'   ".blue
    sleep(5)
    instructions
end

#print instructions for the game
def instructions
    system("clear")
    puts "          It's been a long day!\n\n"
    print "  Use the"
    print " arrow keys".red
    puts " to drive home through\n\n"
    puts "the maze to get home and cuddle your puppy \xF0\x9F\x90\xB6"
    sleep(7)
end