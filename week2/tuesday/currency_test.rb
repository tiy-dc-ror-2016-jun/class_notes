require_relative "./currency"
require 'minitest/autorun'
require 'minitest/pride'

class CurrencyTest < MiniTest::Test

  def test_can_create_currency_object
    Currency.new(code: :USD, value: 0.0)
  end

  def test_two_currencies_can_be_added
    five_usd = Currency.new(code: :USD, value: 5.0)
    ten_usd = Currency.new(code: :USD, value: 10.0)

    fifteen_usd = five_usd + ten_usd

    assert_equal 15, fifteen_usd

  end

end
