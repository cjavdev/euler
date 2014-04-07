#  # => 600_851_475_143
# 13195
require 'set'
class Factorize
  attr_reader :prime_factors

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

  def n_primes(n)
    i = 2
    until @prime_factors.length == n
      @prime_factors << i if is_prime?(i)
      i += 1
    end
    self
  end
end

# f = Factorize.new
# p f.n_primes(50).prime_factors
