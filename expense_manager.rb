class ExpenseManager
  def initialize
    @expenses = []
  end

  def add_expense(expense)
    @expenses << expense
    puts "Added: #{expense}"
  end

  def list_expenses
    puts "\n--- Expenses ---"
    if @expenses.empty?
      puts "No expenses yet."
    else
      @expenses.each_with_index { |e, i| puts "#{i+1}. #{e}" }
      total = @expenses.map(&:amount).sum
      puts "Total: $#{'%.2f' % total}"
    end
  end

  def remove_expense(index)
    if index >= 1 && index <= @expenses.length
      removed = @expenses.delete_at(index-1)
      puts "Removed: #{removed}"
    else
      puts "Invalid index!"
    end
  end
end