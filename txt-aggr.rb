#!/usr/bin/env ruby


print "how many lines are you entering?  "
line_limit = gets.chomp.to_i
line_count = 1
my_fake_text = File.new("my_fake_text.txt", 'w+')

while line_count <= line_limit
	print "enter line #{line_count}: "
	line_entered = gets.to_s
	my_fake_text.write(line_entered)
	puts
	line_count += 1
end
my_fake_text.close


__END__
line_num = 1
read_file = File.open("my_fake_text.txt") 
read_file.each do |line|
	puts "line #{line_num} - #{line.strip}."
	line_num += 1
	end
