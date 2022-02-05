def fibs(n)
  if n == 1
    return [0]
  elsif n == 2
    return [0, 1]
  else
    a = 0 
    b = 1
    result = [0, 1]
    n -= 2
    while n > 0
      n -= 1
      new_fib = a + b
      result << new_fib
      a = b 
      b = new_fib
    end

    result
  end
end

def fibs_rec(n)
  return [0] if n == 1
  return [0, 1] if n == 2
  
  fibs_rec(n-1) + [fibs_rec(n-1)[-1] + fibs_rec(n-1)[-2]]
end

p fibs_rec(8)
