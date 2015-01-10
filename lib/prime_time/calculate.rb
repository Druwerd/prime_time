module PrimeTime
  module Calculate

    class << self
      def primes(n)
        result = []
        i = 2
        
        while result.size < n do
          result << i if is_prime?(i)
          (i % 2 == 0)? i += 1 : i += 2
        end
        
        result
      end

      # worst case O(sqrt(n)/2)
      def is_prime?(n)
        n = n.to_i
        return false if n == 1 || n < 0 # 1 and negative numbers are not prime
        return true  if n == 2 # 2 is a special case the only even prime
        return false if n % 2 == 0 # even numbers are not prime

        # start with 3 and go up to the square root of n to see is divisable
        divisor = 3
        while divisor <= Math.sqrt(n)
          return false if n % divisor == 0
          divisor += 2
        end

        true
      end
    end

  end
end