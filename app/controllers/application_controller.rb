class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  private

  def cart
    @cart ||= cookies[:cart].present? ? JSON.parse(cookies[:cart]) : {}
  end
  helper_method :cart

  def enhanced_cart
    @enhanced_cart ||= Product.where(id: cart.keys).map {|product| { product:product, quantity: cart[product.id.to_s] } }
  end
  helper_method :enhanced_cart

  def show_order(order_id)
  @show_order = LineItem.where(order_id: order_id).map {|product| { product:Product.where(id: product.product_id).all,
  quantity:product.quantity,item_price: product.item_price.cents/100,total_price:product.total_price.cents/100   }}
  
  end
  helper_method :show_order
 
  def cart_subtotal_cents
 
    enhanced_cart.map {|entry| entry[:product].price_cents * entry[:quantity]}.sum
  end
  helper_method :cart_subtotal_cents


  def update_cart(new_cart)
    cookies[:cart] = {
      value: JSON.generate(new_cart),
      expires: 10.days.from_now
    }
    cookies[:cart]
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
   helper_method :current_user
   
    def authorize
    redirect_to '/login' unless current_user
  end


end
