def square_num?(num)
	unless(num.class == Integer)
		puts "#{num} is not an integer"
		return false
	end
	x = 0
	while x**2 <= num
		return x**2 == num ? true : x+1
	end
	false
end

square_num?(9)
square_num?(5)
square_num?("u")


arr = [1, 3, 5, 7, 9, 11]
arr.include?(3)

arr.map{|x| x == 3? puts true : puts false}

arr.map do |x|
	if x == 3
		puts true
	else
		puts false
	end
end


5.between?(1, 16)


def check_num_range(num)
	unless num.class == Integer
		return "#{num} is not an integer"
	end

	case num
	when 0..50
		return 'Number is between 0 and 50'
	when 51..100
		return 'Number is between 51 and 100'
	else
		return 'Number is above 100'
	end
end

check_num_range(50)
check_num_range(98)
check_num_range('Yo!')
check_num_range(103)



def stop_loop
	while true
		puts 'Type STOP to end the loop'
		x = gets.to_s
		break if x == "STOP"
	end
end

stop_loop



def stop_loop
    while true do
      puts 'Type STOP to stop the loop'
      x = gets.chomp
      break if x == 'STOP'
    end
end

stop_loop





def div_by_two
	[6,3,1,8,4,2,10,65,102].each_with_object([]) { |x, arr| arr.push(x) if x%2 == 0 }
end
div_by_two

