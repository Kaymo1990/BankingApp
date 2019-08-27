# frozen_string_literal: true
# this class will store statements

class Statement
  attr_reader :balance, :full_Statement, :today_date

  def initialize
    @balance = 1000
    @full_statement = []
    @today_date = Time.now.strftime('%m/%d/%Y')
  end

  def returnStatement
    @full_statement << 'date || credit || debit || balance'
    @full_statement.reverse.each do |single_statement|
      puts single_statement
    end
  end

  def credit(credit)
    @balance += credit
    @full_statement << "#{@today_date} || #{credit} || || #{balance}"
  end

  def debit(debit)
    @balance -= debit
    @full_statement << "#{@today_date} || || #{debit} || #{balance}"
  end
end
