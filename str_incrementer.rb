def string_incrementer(string)
 arr = []
 current_class = "string"

 string.chars.each do |x|
   x.class == current_class ? arr << x : arr = [x]
 end
 arr
end
puts string_incrementer("foobar2")
