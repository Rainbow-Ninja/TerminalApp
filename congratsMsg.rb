start = 0
starstop1 = "*  *  *  *  *  *  *  *  *  *  *  *  *\n\n".cyan
starsbottom1 = "\n*  *  *  *  *  *  *  *  *  *  *  * ".cyan
starstop2 = " *  *  *  *  *  *  *  *  *  *  *  *  \n\n".red
starsbottom2 = "\n *  *  *  *  *  *  *  *  *  *  *  *  ".red
starstop3 = "  *  *  *  *  *  *  *  *  *  *  *  * \n\n"
starsbottom3 = "\n*  *  *  *  *  *  *  *  *  *  *  *  *"
message = "Congratulations! You Won!!\n\n".center(starstop3.length).yellow


while(start <= 20)
   print starstop1
   print message
   print starsbottom1
   sleep(0.1)
   system("clear")
   print starstop2
   print message
   print starsbottom2
   sleep(0.1)
   system("clear")
   print starstop3
   print message
   print starsbottom3
   sleep(0.1)
   system("clear")
   start +=1
end