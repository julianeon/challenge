class PrimePrint
  attr_accessor :primes
  def initialize(arg)
    @primes=arg
  end

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

  def get_primes(i=0)
    prime_array=Array.new
    while (prime_array.length)<self.primes
      if prime(i)
	prime_array.push(i)
      end
      i=i.next
    end
    return prime_array
  end

  def print_array(array)
    array.each_with_index do |elem_x,x|
      array.each_with_index do |elem_y,y|
	if x==0
	  print "#{yield(elem_y)}"
	elsif y==0
	  print "#{yield(elem_x)}"
	else
	  print "#{yield(elem_x*elem_y)}"
	end
      end
      puts
    end
  end
end
    
#test_array=get_primes(100000)
prm=PrimePrint.new(10)
count_array=prm.get_primes
prm.print_array(count_array) { |x| "%4d" % x }
prm.print_array(count_array) { |x| "%5d" % x }
prm.print_array(count_array) { |x| "%7d" % x }


