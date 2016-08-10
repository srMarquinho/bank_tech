require "bank"

describe Bank do

  subject(:bank) {described_class.new}

  let(:amount) {double(99.99)}

  # it "#date" do
  #
  # end

  describe "#deposit" do
    it "can make a deposit" do
      deposit = bank.deposit amount
      expect(deposit).to eq [amount]
    end

    it "can store a deposit" do
      bank.deposit amount
      expect(bank.credit). to eq [amount]
    end
  end

  describe "#withdraw" do
    it "can make a withdraw" do
      deposit = bank.deposit amount
      expect(deposit).to eq [amount]
    end

    it "can store a withdraw" do
      bank.withdraw amount
      expect(bank.debit). to eq [amount]
    end
  end

  it "#print" do

  end
end
