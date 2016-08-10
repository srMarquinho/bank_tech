class Bank

  attr_reader :credit, :debit, :balance

  def initialize
    @date = []
    @credit = []
    @debit = []
    @balance = []
  end

  # def date(date)
  #   @date << date
  # end

  def deposit(amount)
    @credit << amount
  end

  def withdraw(amount)
    @debit << amount
  end

  def print

  end
end
