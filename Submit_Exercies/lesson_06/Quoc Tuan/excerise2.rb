#Tính kế thừa trong ruby cũng tương tự như một số ngôn ngữ khác như C#, Java
#Ruby không hỗ trợ đa kế thừa nhưng có thể sử dụng Mixin để mix-in các modun lại, có thể xem mixin tương tự như implement
#trong các ngôn ngữ như C#, java... vì vậy ruby sử dụng 
#mixin để giải quyết vấn đề đa thừa kế

#Có thể xây dựng một lớp con kế thừa các thuộc tính, phương thức từ lớp khác là lớp cha, lớp cơ sở. Để khai báo một lớp kế thừa lớp khác dùng ký hiệu <
#Ngoài việc kế thừa các thuộc tính và phương thức ở lớp cha, ta có thể định nghĩa thêm các phương thức ở lớp con, biến riêng của nó, thậm chí là override lại 
#phương thức của lớp cha

#Phạm vi truy xuất trong ruby tương tự như những ngôn ngữ lập trình khác như protected, private, public
#protected và public cho phép lớp con kế thừa và sử dụng được
#private trong ruby cho phép lớp con kế thừa và sử dụng
#Mặc định các phương thức khai báo mà không có chỉ định cụ thể nào thì khả năng truy cập vào nó là public, 
#phương thức có thể truy cập từ lớp kế thừa, từ các đối tượng khác...

#VD
class Animal
    protected
    attr_accessor :weight, :height, :name

    public
    def initialize(weight = 0, height = 0, name = "")
        @weight = weight
        @height = height
        @name = name
    end

    def get_weight
        return @weight
    end

    def set_weight(weight)
        @weight = weight
    end 

    def sound
        puts "Không có gì..."
    end 
end

class Horse < Animal 
    def initialize(weight = 80, height = 40, name = "Horse")
        super(weight, height, name)
    end

    def get_name
        return @name
    end 

    def sound
        puts "Hí hi hi hì hị"
    end 
end 