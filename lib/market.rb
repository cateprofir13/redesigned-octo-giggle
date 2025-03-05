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
    hash = {}
    keys = []
    @vendors.each do |vendor|
      vendor.inventory.each_key do |item|
        keys << item
         #binding.pry
      end
    end
   
    values = keys.map do |item|
      quantity = 0
      vendors = []

    end
    

  end
end