class Admin::DashboardController < ApplicationController
  http_basic_authenticate_with :name => "user", :password => "password"
  def show
  end
end
