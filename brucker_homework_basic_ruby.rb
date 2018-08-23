# 1 Create a function that takes a string as an argument and adds the phrase "Only in America!" to the end of it

def only(arg)
    puts arg + " Only in America!"
end

only('Poop')

# 2 Create a function to find the maximum value in an array of numbers. For instance: [100,10,-1000] should return 100. Do not use Ruby's built-in .max function.

def find_max(array)
    max = array.sort.reverse
    puts max[0]
end

find_max([8,7,9])

# 3 Create a function that takes two arguments - both of them arrays. Inside of the function, combine the arrays using the items from the first array as keys and the second array as values.

def comb_arrays(keys, values)
    combined = keys.zip(values)
    puts combined
end

comb_arrays([:firstname, :lastname, :email],['mike','brucker','mb@aol.com'])

# 4 Write a program that prints the numbers from 1 to 100, except:
# -- for multiples of three print "Fizz" instead of the number
# -- for multiples of five print "Buzz"
# -- Print "FizzBuzz" for numbers that are multiples of both 3 and 5.

def fizz_buzz()
    for i in 1..100
        if i % 3 == 0 && i % 5 == 0
            puts 'FizzBuzz'
        elsif i % 3 == 0
            puts 'Fizz'
        elsif i % 5 == 0
            puts 'Buzz'
        else
            puts i
        end
    end
end

fizz_buzz()