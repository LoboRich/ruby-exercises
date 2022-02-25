def unique_in_order(arr)
	new_array = []
	arr = arr.class == String ? arr.chars : arr
	arr.each_with_index {|a, i| new_array << a if new_array[-1] != a}
	return new_array
end

unique_in_order('AAAABBBCCDAABBB')
unique_in_order('ABBCcAD')
unique_in_order([1,2,2,3,3])

