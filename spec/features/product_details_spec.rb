require 'rails_helper'
require 'capybara/poltergeist'
Capybara.default_driver = :poltergeist 


RSpec.feature "Product Details", type: :feature, js: true do
  pending "add some scenarios (or delete) #{__FILE__}"

# SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    1.times do |n|
      @category.products.create!(
  name:  Faker::Hipster.sentence(3),
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
)
    end
  end


  it "should go to product page" do

  visit root_path

  # sleep 5


click_link(class: 'btn btn-default pull-right')
sleep 10
save_screenshot
  # puts page.body
  #<various content asserts on page currently commented out

end


end
