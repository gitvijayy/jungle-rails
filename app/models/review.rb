# frozen_string_literal: true

class Review < ActiveRecord::Base
  RATING_NUMBER = [1, 2, 3, 4, 5].freeze
  validates :rating, presence: true
  validates :user_id, presence: true
  validates :product_id, presence: true
  validates :description, presence: true

  belongs_to :product
  belongs_to :user
end
