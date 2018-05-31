class Task < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 25 }
  validates :dueDate, presence: true
  validate :due_date_cannot_be_in_the_past

  attr_accessible :title, :note, :dueDate, :completionDate
  
  def due_date_cannot_be_in_the_past
    if dueDate.present? && dueDate < Date.today
      errors.add(:dueDate, "Can't be in the past")
    end
  end 
end
