def is_pallindrome?(num)
  s = num.to_s
  (s.length == 5 && s[0] == s[-1] && s[1] == s[-2]) || (s.length == 6 && s[0] == s[-1] && s[1] == s[-2] && s[2] == s[3])
end

def check_three_digit
  biggest = 12321
  set = []
  900.upto(999) do |x|
    900.upto(999) do |y|
      prod = x * y
      if is_pallindrome?(prod)
        set = x, y
        biggest = prod
      end
    end
  end
  set << biggest
end

check_three_digit # => [993, 913, 906609]
#
# is_pallindrome?(12321)
# is_pallindrome?(12341)
# is_pallindrome?(92329)
# is_pallindrome?(923329)
