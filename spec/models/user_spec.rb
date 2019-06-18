require 'rails_helper'

RSpec.describe User, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
# validates :first_name, presence: true
#   validates :last_name, presence: true
#   validates :email, presence: true
#   validates :email, uniqueness: true
#   validates :password, presence: true
#   validates :password_confirmation, presence: true

  describe 'Validations' do
    # validation tests/examples here
  
  it 'has a Password and Password Confirmation but they dont match' do
    @user = User.new({password:'vijay',password_confirmation:'vijay1'})
    
    @user.valid?
    expect(@product.errors[:password_digest].size).to eq(1)
end





end 
end
