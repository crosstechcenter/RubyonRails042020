colors_1 = ['violet', 'indigo', 'blue', 'green']
colors_2 = ['yellow', 'violet', 'orange', 'red', 'violet']
puts "kích thước chuỗi 1: #{colors_1.size}"
puts "Độ dài chuỗi 1: #{colors_1.length}"
colors_3 = colors_1 + colors_2
puts colors_3
colors_repeated = ['violet']
colors_new = colors_3 - colors_repeated
puts colors_new
colors_1.push('yellow')
colors_1.push('red')
colors_2.push('green')
colors_2.push('blue')
colors_1 = ['violet', 'indigo', 'blue', 'green']
colors_1.last
puts colors_1
colors_1.pop
puts colors_1