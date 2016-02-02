# When done, submit this entire file to the autograder.

# Part 1

def sum arr
    newval = 0
    arr.each do |x|
      newval = newval + x
    end
    newval
end

def max_2_sum arr
  return 0 unless arr.any?
  return arr[0] if arr.length==1
  first_max=arr[0]
  second_max=arr[1]
  first_max,second_max = second_max, first_max if first_max<second_max
  arr.drop(2).each { |elem|
  if first_max<=elem 
    second_max=first_max
    first_max=elem
  end
  if second_max<elem && elem<first_max
    second_max=elem
  end
  }
 first_max + second_max
end

def sum_to_n? arr, n
  #return true if arr.empty? && n==0
  return false if arr.empty?
  arr.combination(2).any? {|first, second| first + second == n }
end

# Part 2

def hello(name)
  "Hello, " + name
end

def starts_with_consonant? s
  return false if s.empty? or (s[0] =~ /[[:alpha:]]/)==nil
  not ['A', 'E', 'I', 'O', 'U'].include?(s[0].upcase)

end

def binary_multiple_of_4? s
  return false if (s =~ /\A[-+]?\d+\z/)==nil
  s.to_i % 4 == 0
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
