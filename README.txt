This program prints out the first 10 prime numbers.

You can run it by typing: 

ruby challenge.rb

There are no external dependencies. 

It takes ~12 seconds on my OSX computer to find the first 100,000 primes. For each n prime, the algorithm's running time is O(sqrt(n)).

It uses a few methods:
prime(x) - determines if the number x is prime (true is prime, false if not prime)
get_this_many_primes(x) - returns x primes
print_array_10x10(array) - prints the given array to STDOUT as a 10x10 array formatted within 5 spaces for each prime number

It uses test unit for testing. You can run the tests by typing:

ruby test_prime.rb
