def format_names(names)
	names.map{|x| x[:name]}.join(', ').sub(/(.*),/, '\1 &')	
end
format_names([{name: 'Bart'}, {name: 'Lisa'}, {name: 'Maggie'}])
format_names([{name: 'Bart'}, {name: 'Lisa'}])
format_names([{name: 'Bart'}])
format_names([])
