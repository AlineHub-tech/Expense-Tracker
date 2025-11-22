class Expense
  attr_accessor :title, :amount

  def initialize(title, amount)
    @title = title
    @amount = amount.to_f
  end

  def to_s
    "#{title}: $#{'%.2f' % amount}"
  end
end
