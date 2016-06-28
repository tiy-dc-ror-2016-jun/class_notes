require_relative "./currency"
require 'minitest/autorun'
require 'minitest/pride'

class CurrencyTest < MiniTest::Test

  def lincoln
    Currency.new(code: :USD, value: 5.0)
  end

  def test_can_create_currency_object
    Currency.new(code: :USD, value: 0.0)
  end

  def test_can_pull_value_from_currency
    assert_equal 5, lincoln.value
  end

  def test_if_code_appears
    assert_equal :USD, lincoln.code
  end

  def test_two_currencies_can_be_added
    ten_usd = Currency.new(code: :USD, value: 10.0)

    fifteen_usd = lincoln + ten_usd

    assert_equal 15, fifteen_usd
  end

  def test_currencies_of_different_codes_throw_errors_when_added
    ten_eur = Currency.new(code: :EUR, value: 10.0)

    assert_raises(DifferentCurrencyCodeError) do
      lincoln + ten_eur
    end
  end

  def test_two_currencies_can_be_multiplied
    skip
  end

end
