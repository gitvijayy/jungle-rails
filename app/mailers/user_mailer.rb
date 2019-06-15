# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'notifications@example.com'

  def order_email(order)
    @order = order
    # @url  = 'http://localhost:3000/cart'
    mail(to: @order.email, subject: 'Order Placed')
  end
end
