#  # => 600_851_475_143
# 13195
require 'set'
class Factorize
  def initialize
    @prime_factors = Set.new
    @last_added = 2
  end

  def is_prime?(n)
    return true if @prime_factors.include?(n)
    has_factors = @prime_factors.each do |factor|
      return false if n % factor == 0
    end
    if has_factors.object_id == @prime_factors.object_id
      @prime_factors << n
      @last_added = n
    end
    true
  end

  def precalc_factors_to(n)
    (2..n).each do |x|
      is_prime?(x)
    end
  end

  def largest_prime_factor(n)
    (2..n).each_with_index do |x, i|
      if n % x == 0
        is_prime?(x)
      end
      puts i if i % 10_000_000 == 0
    end
    @last_added
  end
end

# f = Factorize.new
# p f.largest_prime_factor(313_191) # 0
