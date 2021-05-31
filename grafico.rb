def chart(arreglo)

    arreglo.map do |i|
      print "|"
      print  "**" * i
      print "\n"
    end
  end
  
  arr = ARGV
  arreglo = []
  arr.count.times do |i|
    arreglo.push(ARGV[i].to_i)
  end
  
  chart(arreglo)