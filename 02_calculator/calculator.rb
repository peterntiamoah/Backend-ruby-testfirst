#write your code here

def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

#04-25-21: Ask Rob today how to test which one of these methods  of handling this task is more efficient.
def sum(array)
    array.inject(0) { |sum, element| sum += element }
end

def multiply(array)
    array.inject(1) { |sum, element| sum*= element }
end

def power(a,b)
    power = a
    (b-1).times do
        power *= a
    end
    power
end

def factorial(n)

    count = 0
    factorial = 1

    n.times do
        count += 1
        factorial *= count
    end
    factorial
end