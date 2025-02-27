require 'rails_helper'
require 'capybara/poltergeist'
Capybara.default_driver = :poltergeist 

RSpec.feature "Visitor navigates to home page", type: :feature, js: true do
  pending "add some scenarios (or delete) #{__FILE__}"

# SETUP
  before :each do
    @category = Category.create! name: 'Apparel'

    10.times do |n|
      @category.products.create!(
  name:  Faker::Hipster.sentence(3),
  description: Faker::Hipster.paragraph(4),
  image: open_asset('apparel1.jpg'),
  quantity: 10,
  price: 64.99
)
    end
  end


  scenario "They see all products" do
    # ACT
    visit root_path

    # DEBUG / VERIFY
    save_screenshot

     expect(page).to have_css 'article.product', count: 10
  end

end
