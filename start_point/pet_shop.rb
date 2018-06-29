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
  pets_name = shop[:pets]
  pet_hash = Hash.new
  for pet in pets
    index_pet = pets.index(pet)
    if pets[index_pet][:name] == name
      pet_hash[:name] = name
    end
  end
  return pet_hash
end
