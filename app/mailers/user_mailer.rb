class UserMailer < ApplicationMailer
default from: 'notifications@example.com'
 
  def order_email(user)
    @user = user
    @url  = 'http://localhost:3000/cart'
    mail(to: @user, subject: 'Order Placed')
  end
end
