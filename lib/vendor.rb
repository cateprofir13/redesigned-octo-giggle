class Vendor
  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
  end
  
  def check_stock(item)
    if @inventory[item] != nil
      return @inventory[item]  
    else
      return 0  
    end
  end

  def stock(item, quantaty)
    @inventory[item] = check_stock(item) + quantaty

  end

  def potential_revenue #the sum of all their items' price * quantity.
    revenue = 0
    @inventory.each do |item, quantaty|
      revenue += item.price * quantaty
    end
    revenue
  end
end

