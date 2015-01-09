require 'spec_helper'

describe PrimeTime::PrimeTable do

  describe "#initialize" do
    subject(:new_prime_table) { PrimeTime::PrimeTable.new(10)}

    it "creates a PrimeTable instance" do
      expect(new_prime_table).to be_a PrimeTime::PrimeTable
    end

    it "has width" do
      expect(new_prime_table.width).to be 10
    end

    it "has height" do
      expect(new_prime_table.height).to be 10
    end
  end

  context "5 by 5 PrimeTable" do
    subject(:five_by_five_prime_table) { PrimeTime::PrimeTable.new(5) }
    subject(:five_by_five_prime_table_string) {
%Q(x   2   3   5   7  11
2   4   6  10  14  22
3   6   9  15  21  33
5  10  15  25  35  55
7  14  21  35  49  77
11 22  33  55  77 121)
    }

    it "prints to STDOUT" do
      expect(five_by_five_prime_table.to_s).to eq(five_by_five_prime_table_string)
    end

  end
end