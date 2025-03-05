require 'rspec'
require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before :each do
    @vendor =  Vendor.new("Rocky Mountain Fresh")
    @item1 = Item.new({name: 'Peach', price: "$0.75"})
    @item2 = Item.new({name: 'Tomato', price: '$0.50'})
  end

  it "exists" do
    expect(@vendor).to be_a(Vendor)
  end
  it 'has attributes' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
    expect(@vendor.inventory).to eq({})
  end

  describe '#check_stock' do
   it "checks the stock" do
      @vendor.check_stock(@item1)

      expect(@vendor.check_stock(@item1)).to eq(0)
   end
  end
  describe '#stock' do
    it 'adds to the stock' do
      @vendor.stock(@item1, 30)

      expect(@vendor.inventory).to eq({@item1 => 30})
      expect(@vendor.check_stock(@item1)).to eq(30)

      @vendor.stock(@item1, 25)
      #expect(@vendor.inventory).to eq ({@item1 => 55})
      expect(@vendor.check_stock(@item1)).to eq(55)

      @vendor.stock(@item2, 12)
      expect(@vendor.check_stock(@item2)).to eq(12)
      expect(@vendor.inventory).to eq ({@item1 => 55, @item2 => 12})

    end
  end

  describe '#potential_revenue' do
  it 'calculates potential revenue' do
    vendor1 = Vendor.new("Rocky Mountain Fresh")
    item1 = Item.new({name: 'Peach', price: "$0.75"})
    item2 = Item.new({name: 'Tomato', price: "$0.50"})

    vendor1.stock(item1, 35)
    vendor1.stock(item2, 7)

    expect(vendor1.potential_revenue).to eq(29.75)
  end
end
end