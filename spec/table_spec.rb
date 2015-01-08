require 'spec_helper'

describe PrimeTime::Table do

  describe "#initialize" do
    it "creates a table instance" do
      expect(PrimeTime::Table.new).to be_a PrimeTime::Table
    end
  end

  context "empty table" do
    subject(:empty_table) { PrimeTime::Table.new(width: 5, height: 5)}
    subject(:empty_table_string){
%Q(x          
  - - - - -
  - - - - -
  - - - - -
  - - - - -
  - - - - -)
    }

    it "has width" do
      expect(empty_table.width).to be 5
    end

    it "has height" do
      expect(empty_table.height).to be 5
    end

    it "prints to STDOUT" do
      expect(empty_table.to_s).to eq(empty_table_string)
    end
  end

  context "5 by 5 multiplication table" do
    subject(:five_by_five_table) { PrimeTime::Table.new(width: 5, height: 5)}
    subject(:five_by_five_table_string) {
%Q(x  1  2  3  4  5
1  1  2  3  4  5
2  2  4  6  8 10
3  3  6  9 12 15
4  4  8 12 16 20
5  5 10 15 20 25)
    }

    before {
      five_by_five_table.col_headers = %w(1  2  3  4  5)
      five_by_five_table.row_headers = %w(1  2  3  4  5)
      five_by_five_table.rows[0] = %w(1  2  3  4  5)
      five_by_five_table.rows[1] = %w(2  4  6  8 10)
      five_by_five_table.rows[2] = %w(3  6  9 12 15)
      five_by_five_table.rows[3] = %w(4  8 12 16 20)
      five_by_five_table.rows[4] = %w(5 10 15 20 25)
    }

    it "prints to STDOUT" do
      expect(five_by_five_table.to_s).to eq(five_by_five_table_string)
    end
  end

end