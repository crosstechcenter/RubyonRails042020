class Email
    def prosess()
        printf "Nhap first_name "
        first_name = gets.chomp
        printf "Nhap last_name "
        last_name = gets.chomp
        puts "#{first_name}#{last_name}@crosstech.com"
    end
end