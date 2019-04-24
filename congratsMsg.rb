require 'colorize'

start = 0
stars1top = "*  *  *  *  *  *  *  *  *  *  *  *  *\n\n".cyan
stars1bottom = "\n*  *  *  *  *  *  *  *  *  *  *  * ".cyan
stars2top = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n".red
stars2bottom = "\n *  *  *  *  *  *  *  *  *  *  *  *  ".red
stars3top = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n"
stars3bottom = "\n*  *  *  *  *  *  *  *  *  *  *  *  *"
message = "Congratulations! You Won!!\n\n".center(stars3top.length).yellow  


while(start <= 20)
   print stars1top
   print message
   print stars1bottom
   sleep(0.1)
   system("clear")
   print stars2top
   print message
   print stars2bottom
   sleep(0.1)
   system("clear")
   print stars3top
   print message
   print stars3bottom
   sleep(0.1)
   system("clear")
   start +=1
end