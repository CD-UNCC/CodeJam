data = File.open("/home/ubuntu/Dropbox/Ruby/2012 Qualifier/A-small-practice.in")
outData = File.new("/home/ubuntu/Dropbox/Ruby/2012 Qualifier/small.out","w")
cipher = {:e=>"o", :j=>"u", :p=>"r", :" "=>" ", :m=>"l", :y=>"a", :s=>"n", :l=>"g", :c=>"e", :k=>"i", :d=>"s", :x=>"m", :v=>"p", :n=>"b", :r=>"t", :i=>"d", :b=>"h", :t=>"w", :a=>"y", :h=>"x", :w=>"f", :f=>"c", :o=>"k", :u=>"j", :g=>"v", :z=>"q",:q => "z"}
cases = data.gets.chomp
converted = []
for x in 0...cases.to_i
	coded = data.gets.chomp.split("")
	for i in 0...coded.length
		converted[i] = cipher[coded[i].to_sym]
	end
	outData.puts "Case ##{x+1}: #{converted.join("")}"
	converted = []
end