title = 'ruby Fundamentals'
puts "Đô dài của chuỗi là #{title.length}"
puts "Chuỗi sau khi upcase là #{title.upcase}"
puts "Chuỗi sau khi downcase là #{title.downcase}"
puts "Chuỗi sau khi capitalize là #{title.capitalize}"
puts "Chuỗi sau khi upcase! là #{title.upcase!}"
var_1 = 'Ruby'
var_2 = 'Fundamentals'
title = var_1 + '' + var_2
puts title
title = var_1.concat(var_2)
puts title
title = 'Java - My favorite book is Java Fundamentals'
title["Java"] = 'Ruby'
puts title

title = 'Java - My favorite book is Java Fundamentals'
title.gsub("Java", "Ruby")
puts title