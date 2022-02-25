def find_uniq(arr)
	return false unless arr.is_a?(Array)
	return false if arr.length < 3
	arr.select { |e| arr.count(e) == 1}[0]
end
find_uniq([1,1,1,2,1,1])
find_uniq([0,0,0,0.55,0,0])
find_uniq([0,1])
find_uniq([0,0,0,1,1])
find_uniq(2)
