
file = File.open('./ventas_base.db').read
file = file.split(',')

file.map!{|num| num.to_f}

def projecteichon(sales, percent, first_month, last_month)
    first_month = first_month - 1
    last_month = last_month - 1

    total_sales = sales[first_month..last_month].sum
    projection = total_sales * (1+percent/100.0)  
end

data = []

data.push(projecteichon(file, 10, 1, 6))
data.push(projecteichon(file, 20, 7, 12))

new_data = ""
data.each{|d| new_data <<  "#{d}\n"}

File.write('./resultados.data', new_data)



#filter = ARGV[0].to_i file = File.open('./ventas_base.db').read file = file.split(',') output = File.open('resultados.data', 'w') array = [] file.each do |d| array.push d.to_f end semestre1 = array[0..5].sum * 1.1 semestre2 = array[6..11].sum * 1.2 print semestre1.round(2) print "\n" print semestre2.round(2) print "\n" output.write(semestre1.round(2)) output.write("\n") output.write(semestre2.round(2)) output.close 