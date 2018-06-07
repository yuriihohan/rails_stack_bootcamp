class FeatureProduct < ActiveRecord::Base
  attr_accessible :header, :price

  validates :header, presence: true, length: { maximum: 50 }
  validates :price, :numericality => { :greater_than => 0 }
  validates :image, presence: true

  attr_accessible :image
  has_attached_file :image, :default_url => 'assets/master-slide.jpg'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
