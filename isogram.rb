
def isogram?(word)
	arr = word.downcase.chars
	result = arr.detect{ |e| arr.count(e) > 1 }
	result.nil? ? true : false
end
isogram?("flowers")
isogram?("bottle")
isogram?("boTtle")
isogram?("")
