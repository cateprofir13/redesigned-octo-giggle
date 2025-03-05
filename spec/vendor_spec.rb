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
end