class SliderImage < ActiveRecord::Base
  attr_accessible :button_text, :mid_header, :up_header

  validates :button_text, presence: true, length: { maximum: 20 }
  validates :mid_header, presence: true, length: { maximum: 25 }
  validates :up_header, presence: true, length: { maximum: 25 }
  validates :image, presence: true

  attr_accessible :image
  has_attached_file :image, :default_url => 'assets/master-slide.jpg'
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
