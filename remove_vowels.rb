def remove_vowels(str)
	str.gsub(/[aeiou]/, '')
end

remove_vowels("pretty")
remove_vowels("November first")
