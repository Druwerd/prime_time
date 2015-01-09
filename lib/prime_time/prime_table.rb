module PrimeTime
  class PrimeTable < Table
    attr_accessor :primes

    def initialize(n)
      super(width: n, height: n)
    end

    private
    def build_table

    end
  end
end