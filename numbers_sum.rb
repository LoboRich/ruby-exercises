def num_counts([1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -11, -12, -13, -14, -15])
	arr.each_with_object([]) do |x, res| x >= 0 ? res[0] << res[0]+=1 : res[1]+=x
end
