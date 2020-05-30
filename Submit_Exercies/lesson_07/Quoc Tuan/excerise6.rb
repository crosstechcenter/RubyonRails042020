class Convert
    def prosess
        my_string_time = "00:05:23.323"
        my_hash_time = {}
        my_string_time["."] = ":"
        my_string_time = my_string_time.split(":")
        my_hash_time['hh'] = my_string_time[0]
        my_hash_time['mm'] = my_string_time[1]
        my_hash_time['ss'] = my_string_time[2]
        my_hash_time['s'] = my_string_time[3]
        my_hash_time
    end
end