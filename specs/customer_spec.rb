require('minitest/autorun')
require('minitest/reporters')
require_relative('../Pet.rb')
require_relative('../Customer.rb')

Minitest::Reporters.use!
Minitest::Reporters::SpecReporter.new

class CustomerTest < MiniTest::Test

  def setup
    @new_pet = Pet.new("Blue", :cat, "British Shorthair", 500)
    @customer = Customer.new("Jack Jarvis", 1000)
  end

  def test_customer_has_name
    assert_equal("Jack Jarvis", @customer.name)
  end

  def test_customer_has_cash
    assert_equal(1000, @customer.cash)
  end

  def test_customer_has_cash_start_empty
    assert_equal(0, @customer.pet_count)
  end

  def test_can_add_pet_to_customer
    @customer.add_pet(@new_pet)
    assert_equal(1, @customer.pet_count)
  end

  def test_can_get_total_pet_cost
    @customer.add_pet(@new_pet)
    @customer.add_pet(@new_pet)
    @customer.add_pet(@new_pet)

    assert_equal(1500, @customer.get_total_value_of_pets)
  end
end
