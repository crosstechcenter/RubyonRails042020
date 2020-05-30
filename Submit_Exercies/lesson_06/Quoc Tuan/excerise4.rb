#Module là một tập các phương thức, lớp, hằng số, do đó module cũng gần giống như class, chỉ khác là module không thể tạo các đối tượng và không thể thừa kế.
#Mixin về cơ bản chỉ là một Module được đưa vào class. Khi bạn include một Module vào một class, class đó sẽ có quyền truy cập vào các method của Module.

module MyFirstModule
    def say_hello
      puts "Hello, I am a Module"
    end
end

class Greeter
  include MyFirstModule #Đây là mixin
end

module MyFirstModule #đây là module function
  def self.say_hello
    puts "Hello, I am a Module"
  end
end