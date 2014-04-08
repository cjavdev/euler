ZERO_TWENTY = (1..20).to_a  # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]

def evenly_devides?(num)
  ZERO_TWENTY.each do |x|         # => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20]
    return false if num % x != 0  # => false, false, false, false, false, false, false, false, false, false, true
  end
  true
end

x = 0
begin
  x += 20
end until evenly_devides?(x)  # => false
p x

# >> false
