require 'minitest/autorun'
require_relative 'cash_register'
require_relative 'transaction'

class CashRegisterTest < Minitest::Test
  def test_accept_money
    register = CashRegister.new(100)
    transaction = Transaction.new(50)
    transaction.amount_paid = 50

    register.accept_money(transaction)

    assert_equal 150, register.total_money
  end

  def test_change
    register = CashRegister.new(100)
    transaction = Transaction.new(20)
    transaction.amount_paid = 50

    assert_equal 30, register.change(transaction)
  end

  def test_give_receipt
    item_cost = 50
    register = CashRegister.new(100)
    transaction = Transaction.new(item_cost)

    register.give_receipt(transaction)

    assert_output("You've paid $#{item_cost}.\n") do
     register.give_receipt(transaction)
    end
  end
end
