def total_cash shop
  return shop[:admin][:total_cash]
end


def add_or_remove_cash shop, amount
  return shop[:admin][:total_cash] += amount
end

def pets_sold shop
  return shop[:admin][:pets_sold]
end

def increase_pets_sold shop, number_of_pets
  return shop[:admin][:pets_sold] += number_of_pets
end


def stock_counts shop
  return shop[:pets].length
end

def pets_by_breed shop, breed
  pets = shop[:pets]
  number_of_dogs_by_breed = []
  for pet in pets
    if pet[:breed] == breed
      number_of_dogs_by_breed << breed
    end
  end
  return number_of_dogs_by_breed
end


def find_pet_by_name shop, name
  pets = shop[:pets]
  for pet in pets
    if pet[:name] == name
      return pet
    end
  end
  return nil
end



def remove_pet_by_name shop, name
  pet_to_be_removed = find_pet_by_name(shop, name)
  pets = shop[:pets]
  pets.delete(pet_to_be_removed)

end

def add_pet_to_stock shop, pet
  shop[:pets] << pet
end

def customer_cash customer
  customer[:cash]
end

def remove_customer_cash customer, amount
  customer[:cash] = customer[:cash] - amount
  return customer
end

def customer_pet_count customer
  return customer[:pets].length
end


def add_pet_to_customer customer, pet
  customer[:pets] << pet
end

def customer_can_afford_pet customer, pet
  if customer[:cash] >= pet[:price]
    return true
  else
    return false
  end
end

def sell_pet_to_customer shop, pet, customer
  increase_pets_sold(shop, 1)
  remove_pet_by_name(shop, pet)
  add_pet_to_customer(customer, pet)
  add_or_remove_cash(shop, pet[:price])
  remove_customer_cash(customer, pet[:price])
end
#
