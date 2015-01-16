module PrimeTime
  class Table
    attr_accessor :width, :height, :col_headers, :row_headers, :rows

    def initialize(width: 1, height: 1)
      @width = width
      @height = height
      @col_headers = Array.new(width){''}
      @row_headers = Array.new(height){''}
      @rows = Array.new(height){ Array.new(width){'-'} }
      post_initialize
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
    def post_initialize
      nil
    end

    def col_header_string
      s = self.col_headers.collect do |header|
        header.to_s.rjust(cell_padding_value)
      end

      corner = 'x'.ljust(row_header_padding_vale)
      "#{corner} #{s.join(' ')}\n"
    end

    def row_string(row, index)
      row_header = self.row_headers[index]
      s = row.collect do |cell|
        cell.to_s.rjust(cell_padding_value)
      end

      "#{row_header.to_s.ljust(row_header_padding_vale)} #{s.join(' ')}\n"
    end

    def max_cell_value
      result = nil
      self.rows.each do |row|
        max_value_in_row = row.map(&:to_i).sort.last
        result = max_value_in_row if result.nil? || max_value_in_row > result
      end
      result
    end

    def max_row_header_value
      self.row_headers.map(&:to_i).sort.last
    end

    def cell_padding_value
      max_cell_value.to_s.size
    end

    def row_header_padding_vale
      max_row_header_value.to_s.size
    end

  end
end