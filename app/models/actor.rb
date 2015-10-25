class Actor < ActiveRecord::Base
  include SharedMethods
  has_many :performances
  has_many :videos, through: :performances
end
