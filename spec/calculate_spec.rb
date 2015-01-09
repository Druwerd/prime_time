require 'spec_helper'

describe PrimeTime::Calculate do
  
  describe ".is_prime?" do
    it "can detect if a number is prime" do
      expect(PrimeTime::Calculate.is_prime?(2)).to be true
      expect(PrimeTime::Calculate.is_prime?(3)).to be true
      expect(PrimeTime::Calculate.is_prime?(5)).to be true
      expect(PrimeTime::Calculate.is_prime?(7)).to be true
      expect(PrimeTime::Calculate.is_prime?(11)).to be true
      expect(PrimeTime::Calculate.is_prime?(13)).to be true
      expect(PrimeTime::Calculate.is_prime?(17)).to be true
      expect(PrimeTime::Calculate.is_prime?(19)).to be true
      expect(PrimeTime::Calculate.is_prime?(23)).to be true
      expect(PrimeTime::Calculate.is_prime?(29)).to be true
      expect(PrimeTime::Calculate.is_prime?(71)).to be true
      expect(PrimeTime::Calculate.is_prime?(113)).to be true
      expect(PrimeTime::Calculate.is_prime?(173)).to be true
      expect(PrimeTime::Calculate.is_prime?(229)).to be true
      expect(PrimeTime::Calculate.is_prime?(281)).to be true
      expect(PrimeTime::Calculate.is_prime?(349)).to be true
      expect(PrimeTime::Calculate.is_prime?(409)).to be true
      expect(PrimeTime::Calculate.is_prime?(7919)).to be true
    end

    it "can detect if a number is not prime" do

    end
  end

  describe ".primes" do

  end

end