class Actor < ActiveRecord::Base
  include SharedMethods
  has_many :performances, dependent: :destroy
  has_many :videos, through: :performances
end
