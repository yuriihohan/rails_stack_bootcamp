class ShippingInfo < ActiveRecord::Base
  attr_accessible :content, :header

  validates :header, presence: true, length: { maximum: 50 }
  validates :content, presence: true
end
