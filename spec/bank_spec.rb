require "bank"

describe Bank do

  subject(:bank) { described_class.new }

  let(:amount) { double 99.99 }
  let(:date) { double "01/01/1001" }

  describe "#deposit" do
    it "can store date and amount as hash" do
      bank.deposit date, amount
      expect(bank.credit).to eq [{ date => amount}]
    end
  end

  describe "#withdraw" do
    it "can store date and amount as hash" do
      bank.withdraw date, amount
      expect(bank.debit).to eq [{ date => amount}]
    end
  end

  # describe "#print" do
  #
  # end
end
