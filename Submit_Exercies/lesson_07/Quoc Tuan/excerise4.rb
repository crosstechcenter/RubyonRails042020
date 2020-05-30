#Làm quen với hash
class Hash_type
    def prosess
        hash1 = {ten: "Tuan",
                tuoi: 17,
                dtb: 8.0}
        hash_people = {Tuan: 30, Nga: 20, Thanh: 40, Tien: 10}
        puts hash1[:ten]
        hash1['tinhtrang'] = "Dang hoc"
        puts hash1['tinhtrang']
        puts "Hash truoc khi sort"
        puts hash_people
        puts "Hash sau khi sort"
        print hash_people.sort
        puts
        puts "Hash sau khi Merge"
        hash1.merge(hash_people)
    end
end
