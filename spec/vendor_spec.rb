require 'rspec'
require './lib/item'
require './lib/vendor'

RSpec.describe Vendor do
  before :each do
    @vendor =  Vendor.new("Rocky Mountain Fresh")
  end

  it "exists" do
    expect(@vendor).to be_a(Vendor)
  end
  it 'has attributes' do
    expect(@vendor.name).to eq("Rocky Mountain Fresh")
    expect(@vendor.inventory).to eq({})
  end
  
end