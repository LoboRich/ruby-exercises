def letter_count(str)
	str.chars.uniq.each_with_object({}) { |x, arr| arr[:"#{x}"] = str.chars.count(x) }
end

letter_count('codewars')
letter_count('activity')
letter_count('arithmetics')
