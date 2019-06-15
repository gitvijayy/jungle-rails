class Review < ActiveRecord::Base
RATING_NUMBER = [1,2,3,4,5]
  belongs_to :product
  belongs_to :user
end
