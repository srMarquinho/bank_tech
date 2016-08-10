class Bank

  attr_reader :inputs

  def initialize
    @inputs = {}
    @balance = 0
  end

  def deposit(date, amount)
    @inputs.merge! date => amount
  end

  def withdraw (date, amount)
    @inputs.merge! date => -amount
  end

  def stringify_inputs(dates="", credits="", debits="", balance)
    "#{dates} || #{credits} || #{debits} || #{balance}\n"
  end

  def print_inputs
    result = []
    @inputs.each do |date, amount|
      if amount < 0
        @balance += amount
        result << stringify_inputs(date, "", amount.abs, @balance)
      else
        @balance += amount
        result << stringify_inputs(date, amount, "", @balance)
      end
    end
    result.reverse.join
  end

  def printer
    "date || credit || debit || balance\n" + print_inputs
  end
end
