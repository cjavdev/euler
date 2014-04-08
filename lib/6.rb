

def sum_of_squares_to(n)
  (1..n).to_a.map { |x| x**2 }.inject(:+)
end

def square_of_sums_to(n)
  ((n * (n+1))/2) ** 2
end

p sum_of_squares_to(10)
p square_of_sums_to(10)
#
square_of_sums_to(100) - sum_of_squares_to(100) # => 25164150

# >> 385
# >> 3025
