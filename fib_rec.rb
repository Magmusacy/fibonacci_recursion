def fibs(num)
  array = [0,1]
  i = 2
  until i == num
    array << array[-1] + array[-2]
    i += 1
  end 
  array
end

def fibs_rec(num, array = [0,1])
  return array if num < 3
  array << array[-1] + array[-2]
  fibs_rec(num-1, array) 
end

def fibs_rec2(num)
  return [0,1] if num < 3
  fib_array = fibs_rec2(num-1)
  fib_array << fib_array[-1] + fib_array[-2] 
end

p fibs(5)
p fibs_rec(5)
p fibs_rec2(5)
