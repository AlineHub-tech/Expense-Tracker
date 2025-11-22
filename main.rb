require_relative 'expense'
require_relative 'expense_manager'

manager = ExpenseManager.new

loop do
  puts "\n--- Expense Tracker ---"
  puts "1. Add Expense"
  puts "2. List Expenses"
  puts "3. Remove Expense"
  puts "0. Exit"
  print "Enter choice: "
  choice = gets.chomp.to_i

  case choice
  when 1
    print "Enter title: "
    title = gets.chomp
    print "Enter amount: "
    amount = gets.chomp
    manager.add_expense(Expense.new('title, amount'))
  when 2
    manager.list_expenses
  when 3
    print "Enter expense number to remove: "
    index = gets.chomp.to_i
    manager.remove_expense('index')
  when 0
    puts "Exiting..."
    break
  else
    puts "Invalid choice!"
  end
end

