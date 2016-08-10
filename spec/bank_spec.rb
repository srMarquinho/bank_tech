require "bank"

describe Bank do

  subject(:bank) {described_class.new}

  let(:amount) {double(1000)}

  # it "#date" do
  #
  # end

  describe "#deposit" do
    it "can make a deposit" do
      deposit = bank.deposit amount
      expect(deposit).to eq [amount]
    end
  end

  describe "#withdraw" do
    it "can make a withdraw" do
      deposit = bank.deposit amount
      expect(deposit).to eq [amount]
    end
  end

  it "#print" do

  end
end
