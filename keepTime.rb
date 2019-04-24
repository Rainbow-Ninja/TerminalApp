def timer
  time = Time.new(0)
  start_at = 0 # change this value

  start_at.upto(1000) { |seconds|
    score = print (time + seconds).strftime('%M:%S')
    sleep(0.05)
    print "\r"
  }
end

#start when anything pressed
#until arr4[-1][-2] == character