# # # #Timer - keep track of time for a score

# counter = 0.00
# start = Time.now.strftime("%L").to_f
# final = 10

# while(Time.now.strftime("%L").to_f <= final)
#    (0..10).each {|n|   #maybe 0..10 is the prob
    
#     print(n)
#     sleep(1)    #maybe sleep 1 sec is problem
#     print "\r"    
# } 
# #     #clears screen so numbers scroll in one spot
# end
# puts "\nTime's up!"

# # # #Time.now.strftime("%L") #milliseconds to 3 digits
#----------------------------------------------------------------------
final = 10
while(Time.now.to_f <= final)
    delta = Time.now
    puts delta.round(3)
    sleep(0.5)
    puts "\r"
end
#-----------------------------------------------------------------------
# # print backspace

# # # start = Time.now
# # # sleep(2)
# # # sleep(0.5)
# # # endnow = Time.now
# # # delta = endnow - start
# # # puts delta.round(3)

time = Timer.new
Time.time do |timer|
    timer.total_time.round(3)  #=> 0
   
    sleep 1
    timer.total_time.round(3)  #=> 1
   
    timer.stop
    timer.total_time.round(3)  #=> 1
   
    sleep 1
    timer.total_time.round(3)  #=> 1
   
    timer.start
    timer.total_time.round  #=> 1
   
    sleep 1
    timer.total_time.round  #=> 2
   end