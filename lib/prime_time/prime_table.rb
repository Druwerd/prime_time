module PrimeTime
  class PrimeTable < Table
    attr_accessor :primes

    def initialize(n)
      @primes = PrimeTime::Calculate.primes(n)
      super(width: n, height: n)
      build_table
    end

    private
    def build_table
      self.col_headers = self.primes
      self.row_headers = self.primes

      self.row_headers.each_with_index do |row_header, row_i|
        self.col_headers.each_with_index do |col_header, col_i|
          self.rows[row_i][col_i] = row_header * col_header
        end
      end
    end
  end
end