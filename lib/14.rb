# n → n/2 (n is even)
# n → 3n + 1 (n is odd)

def chain_from(n)
  return [1] if n <= 1
  if n.even?
    return [n].concat(chain_from(n/2))
  else
    return [n].concat(chain_from((3 * n) + 1))
  end
end

def chain_length(n)
  chain_from(n).length
end

def find_longest_chain
  longest, best = 10, 13
  x = 0
  while x < 1_000_000
    current = chain_length(x) # =>
    if current > longest
      longest = current
      best = x
      puts "Longest: #{ longest } \n Best: #{ best }"
    end
    x += 1
  end
end

find_longest_chain
