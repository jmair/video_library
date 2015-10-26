class Video < ActiveRecord::Base
  belongs_to :producer
  has_many :performances, dependent: :destroy
  has_many :actors, through: :performances

  accepts_nested_attributes_for :producer
end
