#!/usr/bin/env ruby
# 1. Làm quen với Number

# số kế tiếp
2.next
# output = 3 

# số trước đó
3.pred
# output = 2

# BSCNN
2.lcm(3)
# output = 6

# USCLN
2.gcd(4)
# output = 2

num = 2.338
# làm tròn lên
num.ceil
# output = 3

# làm tròn xuống
num.floor
# output = 2

# làm tròn mặc định
num.round
# output = 2

num = 2.50
num.round
# output = 3

# ----------------------------------------------------------------

# 2. Làm quen với String
title = 'ruby Co ban'

# chiều dài chuỗi
title.size
# output = 11

# chiều dài chuỗi
title.length
# output = 11

# in hoa tất cả kí tự trong chuỗi
a = title.upcase
# p a
# output = "RUBY CO BAN"

# viết thường tất cả kí tự trong chuỗi
b = title.downcase
# p b
# output = "ruby co ban"

# viết hoa chữ cái đầu tiên trong chuỗi
c = title.capitalize
# p c
# output = "Ruby co ban"

title
# output = "ruby Co ban"

# thay đổi giá trị chuỗi của biến
title.upcase!
# p title
# output = "RUBY CO BAN"

# nối chuỗi
var_1 = 'Ruby'
var_2 = 'Cơ bản'

# cách dùng + (sẽ tạo ra một string mới rồi gán string đó cho title)
title = var_1 + '' + var_2
# p title
# output = "RubyCơ bản"

# cách dùng .concat (lưu ý giá trị var_1 đã bị thay đổi)
title = var_1.concat(var_2)
# p var_1
# p title
# output = "RubyCơ bản" (= title)

# cách dùng << (không tạo string mới)
var_1 = 'Ruby'
var_2 = 'Fundamentals'
title = ''
title << var_1
title << ' '
title << var_2
# p title
# output = "Ruby Fundamentals"


# Sử dụng string interpolation (sử dụng giá trị của biến/phép tính strong string). Lưu ý String phải bọc bằng dấu nháy đơn
var_1 = 'Ruby'
var_2 = 'Fundamentals'
title = "#{var_1} #{var_2}"
# p title
# output = "Ruby Fundamentals"

calculation_result = "Result of 1 + 2: #{1+2}"
# p calculation_result
# output = "Result of 1 + 2: 3"


# Làm việc với substring: lấy một phần của string, kiểm tra tồn tại
# string có thể được xem như một mảng các ký tự
quote = 'Just Do IT'
# từ ký tự thứ 8, lấy 2 ký tự
quote[8, 2]
# output = "IT"


# Kiểm tra một chuỗi phụ có tồn tại
quote.include?('Just')
# output = true
quote.include?('just')
# output = false


# Thay thế một phần của String bằng một phần khác: [], gsub, gsub!
# thay thế chuỗi khớp đầu tiên
title = 'Java - My favorite book is Java Fundamentals'
title["Java"] = 'Ruby'
# p title
# output = "Ruby - My favorite book is Java Fundamentals"

# thay thế tất cả chuỗi trùng khớp
title = 'Java - My favorite book is Java Fundamentals'
title.gsub("Java", "Ruby")
# output = "Ruby - My favorite book is Ruby Fundamentals"

# Tách chuỗi và nối chuỗi
title = 'My Favorite book is Ruby Fundamentals, interesting?'

# tách chuỗi - default ngắt bằng ký tự space
title.split
# output = ["My", "Favorite", "book", "is", "Ruby", "Fundamentals,", "interesting?"]
months = 'Jan; Feb; Mar'
months.split(';')
# output = ["Jan", " Feb", " Mar"]

# nối chuỗi - default nối dính nhau ko cách
data = ['My', 'Favorite', 'book', 'is', 'Ruby', 'Fundamentals']
data.join
# output = "MyFavoritebookisRubyFundamentals"
data.join(' ')
# output = "My Favorite book is Ruby Fundamentals"

# ----------------------------------------------------------------

# 3. Làm quen với Array
# tính số phần tử
colors_1 = ['violet', 'indigo', 'blue', 'green']
colors_2 = ['yellow', 'violet', 'orange', 'red', 'violet']
colors_1.size
# output = 4
colors_2.length
# output = 5

# merge 2 arrays dùng + hoặc concat
colors_3 = colors_1 + colors_2
colors_3
# output = ["violet", "indigo", "blue", "green", "yellow", "violet", "orange", "red", "violet"]
colors_3 = colors_1.concat(colors_2)
# p colors_1
# output = ["violet", "indigo", "blue", "green", "yellow", "violet", "orange", "red", "violet"]

# remove
colors_repeated = ['violet']
colors_new = colors_3 - colors_repeated
# p colors_new
# output = ["indigo", "blue", "green", "yellow", "orange", "red"]

# insert phần tử mới
color = []
color.push('yellow')
color.push('red')
color.push('green')
color.push('blue')
# p color
# output = ["yellow", "red", "green", "blue"]


# Lấy phần tử cuối với last và lấy và xoá với pop
colors_1 = ['violet', 'indigo', 'blue', 'green']
colors_1.last
# output = "green"
colors_1
# output = "violet", "indigo", "blue", "green"]
colors_1.pop
# output = "green"
colors_1
# output = ["violet", "indigo", "blue"]


# Tạo một mảng không thể chỉnh sửa: dùng freeze
my_array  = [1,2,3]
my_array.freeze
# my_array << 4
# output = can't modify frozen Array (FrozenError)


# Tìm lấy các phần tử trong mảng: uniq, uniq!
my_array  = [1,2,3, 4,3,2]
unique_array = my_array.uniq
my_array.uniq!
# output = [1, 2, 3, 4]
unique_array
# output = [1, 2, 3, 4]


# Sort trong mảng: sort, sort!
my_array = [3,6,23, 1]
my_array.sort
# output = [1, 3, 6, 23]
my_array.sort.reverse
# output = [23, 6, 3, 1]


# Kiểm tra 1 element có tồn tại trong mảng: include?
my_array = ["I", "like", "ruby"]
my_array.include?("ruby")
# output = true
my_array.include?("Ruby")
# output = false


# Chuyển đổi một mảng thành string: join
my_array = ["I", "love", "ruby"]
my_array.join(",")
# output = "I,love,ruby"
my_array.join(" ")
# output = "I love ruby"

# ----------------------------------------------------------------
# 4. Làm quen với Hash
month_hash_1 = {ichi: 1, ni: 2, san: 3}
month_hash_2 = {:ichi => 1, :ni => 2, :san => 3}
month_hash_3 = {'ichi' => 1, 'ni' => 2, 'san' => 3}


# Lấy giá trị dựa trên key
month_hash_1[:ichi]
# output = 1
month_hash_1[:gou]
# output = nil
month_hash_2[:ichi]
# output = 1
month_hash_3['ichi']
# output = 1


# Set giá trị mới
month_hash_1[:ichi] = 'one'
# p month_hash_1
# output = {:ichi=>"one", :ni=>2, :san=>3}
month_hash_1[:gou] = 4
# p month_hash_1
# output = {:ichi=>"one", :ni=>2, :san=>3, :gou=>4}


# Sorting
people_hash = { nam: 30, thom: 20, vy: 18, van: 22 }
people_hash.sort_by { |key, value| value}
# output = [[:vy, 18], [:thom, 20], [:van, 22], [:nam, 30]]
people_hash.sort_by { |key, value| value}.reverse
# output = [[:nam, 30], [:van, 22], [:thom, 20], [:vy, 18]]

people_hash_2 = { nam: { name: "Nam", age: 30 }, thom: { name: "Thơm", age: 20 }, vy: { name: "Vy", age: 18 }, van: { name: "Văn", age: 22 }}
people_hash_2.sort_by { |key, value| value[:age]}
# output = [[:vy, {:name=>"Vy", :age=>18}], [:thom, {:name=>"Thơm", :age=>20}], [:van, {:name=>"Văn", :age=>22}], [:nam, {:name=>"Nam", :age=>30}]]


# Merging
my_hash_1 = {a: 10, b: 20}
my_hash_2 = {c: 30, d: 40}
my_hash_1.merge(my_hash_2)
# output = {:a=>10, :b=>20, :c=>30, :d=>40}
my_hash_1.merge!(my_hash_2)
# p my_hash_1
# output = {:a=>10, :b=>20, :c=>30, :d=>40}


# List keys hoặc values của một hash
people_hash = { nam: 30, thom: 20, vy: 18, van: 22 }
people_hash.keys
# output = [:nam, :thom, :vy, :van]
people_hash.values
# output = [30, 20, 18, 22]


# Xoá giá trị theo key
people_hash = { nam: 30, thom: 20, vy: 18, van: 22 }
people_hash.delete(:thom)
# p people_hash
# output = {:nam=>30, :vy=>18, :van=>22}
people_hash.delete(:vy)
# p people_hash
# output = {:nam=>30, :van=>22}



# Loại bỏ các phần tử khỏi hash theo điều kiện
people_hash = { nam: 30, thom: 20, vy: 18, van: 22 }
people_hash.reject { |key, value| value < 20 }
# output = {:nam=>30, :thom=>20, :van=>22}
people_hash
# output = {:nam=>30, :thom=>20, :vy=>18, :van=>22}
people_hash.reject! { |key, value| value < 20 }
people_hash
# output = {:nam=>30, :thom=>20, :van=>22}

# ---------------------------------------------------------
# 5. Tạo email dựa trên input nhập từ người dùng.
class Person
    def initialize(firstname, lastname)
        @firstname = firstname
        @lastname = lastname
    end

    def email
        @firstname + @lastname + '@' + 'crosstech.com'
    end
end

# # code để test
# puts "Nhập firstname: "
# firstname = gets.chomp
# puts "Nhập lastname: "
# lastname = gets.chomp
# new_person = Person.new(firstname, lastname)
# p new_person.email

# --------------------------------------
# 6. Chuyển đổi một chuỗi thời gian thành một hash (Sử dụng kiến thức String, Array và Hash)
class Hash_time
    def initialize(time_string)
        @time_string = time_string
    end

    def hash_time
        my_hash_time = {'hh' => 0, 'mm' => 0, 'ss' => 0, 's' => 0}
        time_array = @time_string.split(':')
        time_array.concat(time_array[-1].split('.')).delete_at(2)
        i = 0
        for key in my_hash_time.keys
            my_hash_time[key] = time_array[i]
            i += 1
        end
        my_hash_time
    end
end

# code để test
puts "Nhập chuỗi thời gian: "
time_string = gets.chomp
new_hash_time = Hash_time.new(time_string)
p new_hash_time.hash_time
