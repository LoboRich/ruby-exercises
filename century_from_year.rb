def century_from_year(year)
	century = year.to_i*0.01
	century <= century.to_i ? century.to_i : century.to_i+1 
end
century_from_year(2000)
century_from_year(1599)
century_from_year(1900)
century_from_year(1601)
century_from_year(2000)
