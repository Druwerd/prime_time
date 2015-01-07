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

end