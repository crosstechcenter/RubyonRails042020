month_hash_1 = { mot: 1, hai: 2, ba: 3 }
month_hash_2 = { :mot => 1, :hai => 2, :ba => 3 }
month_hash_3 = { 'mot' => 1, 'hai' => 2, 'ba' => 3 }

month_hash_1[:mot]
month_hash_1[:bon]
month_hash_2[:mot]
month_hash_3['mot']
month_hash_2.delete(:ba)
puts month_hash_2
month_hash_1.reject { |key, value| value < 2 }
month_hash_1

month_hash_1[:mot] = 13
puts month_hash_1
month_hash_1[:bon] = 4
puts month_hash_1
month_hash_1['nam'] = 5
puts month_hash_1

people_hash = { nam: 30, thom: 20, vy: 18, van: 22 }
people_hash.sort_by { |name, age| age }
people_hash.sort_by { |name, age| age }.reverse

people_hash_2 = { nam: { name: "Nam", age: 30 }, thom: { name: "Thơm", age: 20 }, vy: { name: "Vy", age: 18 }, van: { name: "Văn", age: 22 }}
people_hash_2.sort_by { |key, value| value[:age] }

my_hash_1 = {a: 10, b: 20}
my_hash_2 = {c: 30, d: 40}
my_hash_1.merge(my_hash_2)
puts my_hash_1
my_hash_1.merge!(my_hash_2)