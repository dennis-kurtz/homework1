# frozen_string_literal: true
# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  sum = 0;
  arr.each do |i|
    sum += i
  end
  sum
end

def max_2_sum(arr)
  if arr.length == 0
    puts "Here1"
    0
  elsif arr.length == 1
    puts "Here2"
    arr[0]
  else
    max1 = -10000
    max2 = -10000
    for number in arr
      if number >= max2
        max1 = max2
        max2 = number
      elsif number >= max1
        max1 = number
      end
    end
    puts max1 + max2
    max1 + max2
  end
end

def sum_to_n?(arr, n)
  return false if arr.length == 1
  x = 0
  while x < arr.length
    y = 0
    while y < arr.length
      if arr[x] + arr[y] == n && x != y
        return true
      end
      y += 1
    end
    x += 1
  end
  return false
end

def even_product(arr)
  return 0 if arr.length == 0
  x = 0
  hasEven = false
  product = 1
  while x < arr.length
    if arr[x]%2 == 0
      hasEven = true
      product *= arr[x]
    end
    x += 1
  end
  if hasEven
    return product
  end
  return 0
end

def abs_difference_is_n?(arr, num)
  # TODO: YOUR CODE HERE
end

# Part 2

def hello(name)
  name_length = name.length
  return "Hello, #{name} your name has #{name_length} characters in it."
end

def starts_with_consonant?(s)
  /^[^aeiou\W]/i.match(s) != nil
end

def binary_multiple_of_4?(s)
  if s =~ /\b[01]+\b/ && (s.to_i(2)%4).zero?
    return true
  end
  return false
end

# Part 3
# HINT http://ruby-for-beginners.rubymonstas.org/writing_classes.html
class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  # isbn getter function
  def isbn
    @isbn
  end

  #price getter function
  def price
    @price
  end

  #isbn setter function
  def isbn=(isbn)
    raise ArgumentError if isbn.empty?
    @isbn = isbn
  end

  #price setter function
  def price=(price)
    raise ArgumentError if price <= 0
    @price = price
  end

  # price as string
  def price_as_string
    str = '%.2f' % @price
    "$" + str.to_s
  end

end
