module PrimeTime
  class Table
    attr_accessor :width, :height, :col_headers, :row_headers, :rows

    def initialize(width: 1, height: 1)
      @width = width
      @height = height
      @col_headers = Array.new(width).fill(' ')
      @row_headers = Array.new(height).fill(' ')
      @rows = Array.new
      height.times do
        @rows << Array.new(width).fill('-')
      end
    end

    def to_s
      String.new.tap do |table_string|
        table_string << col_header_string
        
        self.rows.each_with_index do |r, i|
          table_string << row_string(r, i)
        end
      end.strip
    end

    private
    def col_header_string
      "x #{self.col_headers.join(' ')}\n"
    end

    def row_string(row, index)
      "#{self.row_headers[index]} #{row.join(' ')}\n"
    end

  end
end