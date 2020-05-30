#Quyền truy cập loại public cho phép chúng ta truy cập thành phần của đối tượng ở bên trong lẫn bên ngoài lớp. 
#Quyền protected và private giống nhau ở chỗ đều không cho phép truy cập thành phần của đối tượng ở bên ngoài lớp, 
#khác nhau ở chỗ private không gọi được với từ khóa self, còn protected thì được.

#self là gì
#self là một biến đặc biệt trỏ đến đối tượng "sở hữu" mã hiện đang thực thi. Nói một cách dễ hiểu self là thể hiện của đối tượng đang được thực thi

# Vị trí của Self	                            Giá trị
# Top Level	                                    Main
# Bên trong Class	                            Class Name
# Bên trong Module	                            Module Name
# Bên trong method của một Class	            object thể hiện của Class đó
# Bên trong method của một Module	            object thể hiện của Class mà module mixes
# Bên trong một method của Module	            Class Name của Class đã extends module
# Bên trong một class method của module	        Module Name
# Bên trong một class method của một Class	    Class Name

#ta có ví dụ sau để hiểu điều này

class Test

    attr_accessor :name, :name1, :name2
    def initialize(name = "Name", name1 = "Name1", name2 = "Name2")
        @name = name
        @name1 = name1
        @name2 = name2
    end 

    private  #Không truy xuất được từ bên ngoài và kể cả self
    def get_name
        return @name
    end

    protected #không truy xuất được từ bên ngoài nhưng có thể gọi thông qua self
    def get_name1
        return @name1
    end

    public 
    def get_name2
        return @name2
    end

    public
    def get_all
        puts self.class #Thể hiện của self tại class đang được thực thi
        # puts "Gọi phương thức get_name thông qua self: #{self.get_name}" vì là private nên chạy sẽ lỗi
        puts "Gọi phương thức get_name1 thông qua self: #{self.get_name1}"
        puts "Gọi phương thức get_name2 thông qua self: #{self.get_name2}"
    end
end 

