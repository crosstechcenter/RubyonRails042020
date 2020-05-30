cannang = {"A" => 30, "B" => 40, "C" =>60, "D" => 50}
chieucao = {"A" => 130, "B" => 140, "C" =>160, "D" => 150}

p cannang < chieucao
p cannang["A"]
cannang.store("E", 100)
p cannang
p chieucao.key(140).equal? "C"
cannang.compact
p cannang["E"]
chieucao.delete("D")
chieucao.fetch("A")
chieucao.fetch("F", 168)
p chieucao.length
cannang.clear
p cannang