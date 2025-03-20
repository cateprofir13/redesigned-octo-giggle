class Market
  attr_reader :name, :vendors

  def initialize(name)
    @name = name
    @vendors = []
  end

  def add_vendor(vendor)
    @vendors << vendor
  end
 
  def vendor_names
    @vendors.map do |vendor|
      vendor.name
    #binding.pry
    end
  end

  def vendors_that_sell(item)
    @vendors.find_all do |vendor|
      vendor.inventory.key?(item)
    end
  end

  def total_inventory
    items = {}
    @vendors.each do |vendor|
      vendor.inventory.each do |item, qty|
        if items[item]
          items[item][:quantity] += qty
        else
          items[item]= {quantity: qty, vendors: vendors_that_sell(item)}
        #binding.pry
        end
      end

    end
   items 
   #binding.pry
  end
  
end




































#     @vendors.each do |vendor|
#       vendor.inventory.each do | key, value | #item, quantaty
#         if items[key]
#           items[key][:quantity] += value #quantity
#         else
#           items[key] = { quantity: value, vendors: vendors_that_sell(key) }
#         end
#       end
#     end
#     items
#   end
  
#   def overstocked_items
#     items = []
#     total_inventory.each do |item, item_inventory|
#        if item_inventory[:quantity] > 50 && item_inventory[:vendors].count > 1
#         items << item
#        end
#     end
#     items
#   end
   
#   def sorted_item_list
#     total_inventory.keys.map do |item|
#       item.name
#     end.sort
#     # total_inventory.keys.sort_by {|item| item.price}
#   end
# end




