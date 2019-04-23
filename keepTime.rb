time = Time.new(0)
start_at = 0 # change this value

start_at.upto(1000) do |seconds|
  print (time + seconds).strftime('%M:%S')
  sleep(0.1)
  print "\r"
end