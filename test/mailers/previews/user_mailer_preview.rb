# frozen_string_literal: true

class UserMailerPreview < ActionMailer::Preview
  def order_email
    @order = Order.where('id =?', 35)
    UserMailer.order_email(@order[0])
  end
end
