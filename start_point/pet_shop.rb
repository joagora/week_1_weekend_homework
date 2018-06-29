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
