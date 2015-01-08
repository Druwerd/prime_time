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
      String.new.tap { |table_string|
        table_string << col_header_string

        self.rows.each_with_index do |r, i|
          table_string << row_string(r, i)
        end
      }.to_s.strip
    end

    private
    def col_header_string
      s = self.col_headers.collect do |header|
        header.to_s.rjust(padding_value)
      end

      "x #{s.join(' ')}\n"
    end

    def row_string(row, index)
      row_header = self.row_headers[index]
      s = row.collect do |cell|
        cell.to_s.rjust(padding_value)
      end

      "#{row_header} #{s.join(' ')}\n"
    end

    def max_value
      result = nil
      self.rows.each do |row|
        max_value_in_row = row.map(&:to_i).sort.last
        result = max_value_in_row if result.nil? || max_value_in_row > result
      end
      result
    end

    def padding_value
      max_value.to_s.size
    end

  end
end