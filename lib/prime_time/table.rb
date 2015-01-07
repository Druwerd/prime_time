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
      table_string = ""
      table_string << "x #{self.col_headers.join(' ')}\n"

      self.rows.each_with_index do |r, i|
        table_string << row_string(r, i)
      end

      table_string.strip
    end

    private
    def row_string(row, index)
      "#{self.row_headers[index]} #{row.join(' ')}\n"
    end

  end
end