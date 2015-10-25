class Video < ActiveRecord::Base
  belongs_to :producer
  has_many :performances
  has_many :actors, through: :performances

  accepts_nested_attributes_for :producer
end
