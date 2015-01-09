module PrimeTime
  class PrimeTable < Table

    def initialize(n)
      super(width: n, height: n)
    end
  end
end