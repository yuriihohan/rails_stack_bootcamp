class SliderImage < ActiveRecord::Base
  attr_accessible :button_text, :mid_header, :up_header

  validates :button_text, presence: true, length: { maximum: 20 }
  validates :mid_header, presence: true, length: { maximum: 25 }
  validates :up_header, presence: true, length: { maximum: 25 }
end
