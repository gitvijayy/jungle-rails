require 'rails_helper'

RSpec.describe Product, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"

  describe 'Validations' do
    # validation tests/examples here
  
  it 'has a name' do
    @category = Category.new()
    @product = @category.products.new(name: 'vijay')
    @product.valid?
    expect(@product.errors[:name].size).to eq(0)
end

it 'has a price' do
    @category = Category.new()
    @product = @category.products.new(price:2)
    @product.valid?
    expect(@product.errors[:price].size).to eq(0)
end

it 'has a quantity' do
    @category = Category.new()
    @product = @category.products.new(quantity:'2')
    @product.valid?
    expect(@product.errors[:quantity].size).to eq(0)
end

it 'has a category' do
    @category = Category.new()
    @product = @category.products.new(name: 'vijay')
    @product.valid?
    expect(@product.errors[:category].size).to eq(0)
end

it 'should save when all values are given' do
    @category = Category.new()
    @product = @category.products.new({name: 'vijay',price:2,quantity:2})
    @product.valid?
    expect(@product.errors.size).to eq(0)
end
  
  end


end
