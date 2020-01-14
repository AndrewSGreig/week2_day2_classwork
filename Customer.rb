class Customer
  attr_reader :name, :cash

  def initialize(name, cash)
    @name = name
    @cash = cash
    @pets =[]
  end

  def pet_count
    return @pets.count
  end

  def add_pet(pet)
    @pets.push(pet)
  end

  def get_total_value_of_pets
    total = 0
    for pet in @pets
      total += pet.price
    end
    return total
  end

  def add_or_remove_cash(value)
    @cash +=value
  end

end
