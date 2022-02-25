def delete_nth(list, times)
	list.each_with_object([]) do |item, arr| arr << item if arr.count(item) <= times-1 end
end
delete_nth([1,1,1,1], 2)
delete_nth([20,37,20,21], 1)
