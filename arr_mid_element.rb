def arr_mid_element(arr)
	
	valid_value?(arr) ? arr.index(arr.sort[1]) : "Invalid Values"
end

def valid_value?(arr)
	arr.class == Array && arr.length == 3 && arr.length == arr.uniq.length
end

arr_mid_element([2, 3, 1])
arr_mid_element([5, 10, 14])
arr_mid_element([5, 9])
arr_mid_element([5, 9, 9])
