name = 'Mike'

puts name

array = ['Christmas', 'Halloween', 'Thanksgiving']

puts array
puts array[0] + ' array 0'
puts array[1] + ' array 1'
puts array[-1] + ' array -1'

holidays_and_dates = {Christmas: '12/25', Halloween: '10/31', Thanksgiving: '4th Thursday in Nov'}

puts holidays_and_dates
puts holidays_and_dates[:Christmas]
puts holidays_and_dates[:Halloween]
puts holidays_and_dates[:Thanksgiving]

holidays_and_dates[:Christmas] = 'December 25th'

puts holidays_and_dates[:Christmas]

puts '2+3=5' if 5 == 2+3 

if 2 + 3 == 5
    puts '2+3 = 5 block syntax'
end

puts '1 plus 1 is 2 and 2 plus 2 is 4' if 1+1==2 && 2+2==4

puts '1 plus 1 is 2 or 2 plus 2 is 5' if 1+1==2 || 2+2==5

puts '1 plus 1 is 2 and 2 plus 2 is 5' if 1+1==2 && 2+2==5

puts '1 plus 1 is 3 or 2 plus 2 is 5' if 1+1==3 || 2+2==5


if 2+2==5
    puts 'not gonna see this'
else
    puts "\"you'll see this\\apostrophe the same\\backslash escape character\" "
end

if !(2+2==5)
    puts 'now you see a !'
end

unless (2+2==5)
    puts 'unless not an if'
end

for i in array
    puts i 
end

for i in 0..4
    puts i
end

arr = ['this','is','an','array']
arr.each do |val| 
    puts val + '!'
end

colors = {blue:'#123', red:'#qwerty', yellow:'#5tgbjd'}
colors.each do |key, val|
    puts key
end

colors.each do |key, val|
    puts val
end

def add_five(n)
    n + 5
end

puts add_five(10)

def multiply_fifteen(n)
    n * 15
end

puts multiply_fifteen(2)

def operations(a, b, c, d)
    (a + b) - (c + d)
end

puts operations(4, 1, 3, 2)

def four_args(arg)
    for i in 0..3 
        puts arg
    end
end

def four_times(arg)
    4.times do
        puts arg
    end
end

four_args(4)
four_times('four')

def uppercase(arg)
    arg.upcase
end

puts uppercase('not yelling')