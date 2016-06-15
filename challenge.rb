def prime(prime_candidate)
  if prime_candidate == 2
    true
  elsif prime_candidate <= 1 || prime_candidate % 2 == 0
    false
  else
    divisors = (3..Math.sqrt(prime_candidate)).step(2)
    divisors.none? { |divisor| prime_candidate % divisor == 0 }
  end
end

def get_this_many_primes(total)
  i=0
  prime_array=Array.new
  while (prime_array.length)<total
    if prime(i)
      prime_array.push(i)
    end
    i+=1
  end
  return prime_array
end

def print_array_10x10(array)
  array.each_with_index do |elem_x,x|
    array.each_with_index do |elem_y,y|
      if x==0
        print "%5d" % elem_y
      elsif y==0
        print "%5d" % elem_x
      else
        print "%5d" % (elem_x*elem_y)
      end
    end
    puts
  end
end
  
#test_array=get_this_many_primes(100000)
count_array=get_this_many_primes(10)
print_array_10x10(count_array)

