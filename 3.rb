## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:

file = File.new('./data/3.txt', 'r:UTF-8')

content = file.readlines

summ = 0

for i in (0..content.size-1)
    array = content[i].split.map{|j| j.to_i}
    amount = array.max - array.min
    summ += amount
end

puts summ

