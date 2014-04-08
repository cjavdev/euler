def factorial(n)
  (1..n).to_a.inject(:*).to_s.split(//).map(&:to_i).inject(:+)  # => 648
end
p factorial(100)  # => 648
# >> 648
