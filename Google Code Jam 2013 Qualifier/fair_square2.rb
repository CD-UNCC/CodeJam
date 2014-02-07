data = File.open("/home/ubuntu/Dropbox/Ruby/Google Code Jam 2013 Qualifier/large_1.in")
outData = File.new("/home/ubuntu/Dropbox/Ruby/Google Code Jam 2013 Qualifier/massive.txt","w")
cases = data.gets.chomp
fair_and_square = 0
for x in 0...cases.to_i
  bounds = data.gets.chomp.split(" ")
  upper = Math.sqrt(bounds[1].to_i).floor
  lower = Math.sqrt(bounds[0].to_i).ceil
  for y in lower..upper.to_i
    if y.to_i == y.to_s.reverse.to_i
      if y ** 2 == (y ** 2).to_s.reverse.to_i
        fair_and_square +=1
      end
    end
  end
  outData.puts "Case ##{x+1}: #{fair_and_square}"
  puts "Case ##{x+1}: #{fair_and_square}"
  fair_and_square = 0
end