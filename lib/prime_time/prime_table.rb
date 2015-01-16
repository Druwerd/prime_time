module PrimeTime
  class PrimeTable < Table
    attr_accessor :col_primes, :row_primes

    def initialize(width: 1, height: 1)
      @col_primes = PrimeTime::Calculate.primes(width)
      @row_primes = PrimeTime::Calculate.primes(height)
      super(width: width, height: height)
      build_table
    end

    private
    def build_table
      self.col_headers = self.col_primes
      self.row_headers = self.row_primes

      self.row_headers.each_with_index do |row_header, row_i|
        self.col_headers.each_with_index do |col_header, col_i|
          self.rows[row_i][col_i] = row_header * col_header
        end
      end
    end
  end
end