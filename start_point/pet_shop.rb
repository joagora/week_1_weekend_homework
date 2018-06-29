def total_cash shop
  return shop[:admin][:total_cash]
end


def add_or_remove_cash__add shop, amount
  total_cash = total_cash(shop)
  total_cash += amount
  return total_cash
end
