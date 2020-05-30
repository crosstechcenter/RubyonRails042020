#Làm quen với array
class Array_type
    def prosess()
        array1 = ['Chung', 'Toi', 'Khong', 'The', 'Hoc']
        array2 = ['Can', 'Di', 'An', 'Com']
        array2.push('Thoi')
        array3 = array1 + array2
        print array3
        puts
        array3.last
        array3.pop
        print array3
        puts
        puts "Nhập từ bạn cần tìm"
        a = gets.chop
        array3.each do |b|
            if(a == b) then
                puts "Có phần tử '#{a}'' trong mảng Array3"
               break 
            else
                puts "Không có phần tử '#{a}' trong mảng array3"
            end
        end 

        #Hoặc là sài include thay cho each để tìm phan tử
        # if(array3.include?(a)) then
        #     puts "Có phần tử '#{a}' trong mảng Array3"
        # else
        #     puts "Không có phần tử '#{a}' trong mảng array3"
        # end 
        array3.join(" ")
    end
end