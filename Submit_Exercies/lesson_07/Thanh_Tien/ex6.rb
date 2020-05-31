my_string_time = "00:05:23.323"
my_hash_time = {}
time = my_string_time.split(":")
s = time[2].split(".").last
ss = time[2].split(".").first
my_hash_time = {"hh" => time[0], "mm" => time[1], "ss" => ss, "s" => s}
puts my_hash_time