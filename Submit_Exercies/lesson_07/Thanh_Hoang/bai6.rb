my_string_time = gets.chomp
my_hash_time = {}
time = my_string_time.split(":")
s = time[2].split(".").last
ss = time[2].split(".").first
my_hash_time = {"hh" => time[0], "mm" => time[1], "ss" => ss, "s" => s}
p my_hash_time
