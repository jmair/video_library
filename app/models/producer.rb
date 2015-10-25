class Producer < ActiveRecord::Base
  include SharedMethods
  has_many :videos
end
