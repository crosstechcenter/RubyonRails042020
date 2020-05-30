#Làm quen với string
class String_class
    def prosess_string(str)
        puts "Đô dài của chuỗi là #{str.length}"
        puts "Chuỗi sau khi upcase là #{str.upcase}"

        str1 = "Hi: "
        str1.concat(str)
        puts str1
        puts "Nhập vô một chuỗi bát kì"
        str2 = gets.chomp
        if str1.include?(str2) then
            puts "Tồn tại chuỗi #{str2} trong chuỗi #{str1}"
        end
        title = 'Java - My favorite book is Java Fundamentals'
        title.gsub!("Java", "Ruby")
        title
    end
end
