colors_1 = ['hom', 'nay', 'mua', 'to','qua']
colors_2 = ['mua', 'trang', 'xoa']
p 'Kich thuoc chuoi 1: ' + colors_1.size.to_s
p 'Do dai chuoi 1: ' + colors_1.length.to_s
colors_3 = colors_1 + colors_2
p 'chuoi noi tu chuoi 1 va 2'
p colors_3

colors_repeated = ['qua']

colors_new = colors_3 - colors_repeated
p colors_new
colors_1.push('Bao gio moi het mua')
p colors_1
p colors_new.first
p colors_3.take(5)
p colors_repeated.drop(0)
p colors_repeated.empty?
colors_1.freeze