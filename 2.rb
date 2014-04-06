def fib(n)
  return [] if n == 0
  return [1] if n == 1
  return [1, 2] if n == 2
  prev = fib(n - 1)
  prev << prev[-2] + prev[-1]
end
fib(32).inject(0) { |sum, x| sum + (x.even? ? x : 0) } # => 4613732
