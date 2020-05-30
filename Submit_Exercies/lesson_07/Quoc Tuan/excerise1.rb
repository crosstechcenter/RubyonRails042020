#làm quen với Number
class Int_number
    def sum(a, b)
        return a + b
    end

    def next_number(a)
        puts "Số nằm sau số  #{a} là #{a.next}"
    end

    def pre_number(a)
        puts "Số nằm trước số  #{a} là #{a.pred}"
    end

    def lcm_number(a, b)
        puts "Bội chung nhỏ nhất của #{a} #{b} là #{a.lcm(b)}"
    end
end 
class Float_num
    def next_number_float(a)
        a.next_float
    end
    def round_number(a)
        a.round
    end
end