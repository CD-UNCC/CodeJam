data = File.open("/home/ubuntu/Dropbox/Ruby/B-small-practice.in")
outData = File.new("/home/ubuntu/Dropbox/Ruby/out.txt","w")
cases = data.gets.chomp
for x in 0...cases.to_i
	y = data.gets.chomp
	a = y.split
	b = a.reverse
	c = b.join(" ")
	outData.print "Case ##{x+1}: "
	outData.puts c
end
