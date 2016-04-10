class Card

  attr_reader :money_spent, :daily_cap

  def initialize
    @money_spent = 0
    @daily_cap = 700
  end

  def charge(amount)
    @money_spent += amount
  end

  def increase_cap
    @daily_cap = 800
  end

end