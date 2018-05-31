class Task < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 25 }
  attr_accessible :completed, :note, :title
end
