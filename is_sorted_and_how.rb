def is_sorted_and_how(list)
    return 'Yes, asscending' if list == list.sort
    return 'Yes, descending' if list == list.sort.reverse
    return 'no'
end
is_sorted_and_how([1, 2])
is_sorted_and_how([15, 7, 3, -8])
is_sorted_and_how([4, 2, 30])