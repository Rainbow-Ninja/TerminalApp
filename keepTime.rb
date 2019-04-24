def timer
  time = Time.new(0)
  start_at = 0 # change this value

  start_at.upto(1000) { |seconds|
    score = print (time + seconds).strftime('%M:%S')
    sleep(0.1)
    print "\r"
  }
end