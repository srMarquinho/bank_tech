class Bank

  attr_reader :credit, :debit

  def initialize
    @credit = []
    @debit = []
  end

  def deposit(date, amount)
    @credit << { date => amount }
  end

  def withdraw(date, amount)
    @debit << { date => amount }
  end

  def print

  end
end
