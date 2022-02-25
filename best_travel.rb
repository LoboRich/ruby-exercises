def choose_best_sum(limit_distance, towns, list)
	list.combination(3).to_a.each_with_object([]) {|x, arr| arr.push << x.sum if x.sum <= limit_distance}.max
end

ts = [50,55,56,57,58]
xs = [50]
ys = [91,74,73,85,73,81,87]
choose_best_sum(163,3,ts)
choose_best_sum(163,3,xs)
choose_best_sum(230,3,ys)


