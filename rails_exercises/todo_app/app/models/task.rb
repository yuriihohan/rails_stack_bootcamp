class Task < ActiveRecord::Base
  validates :title, presence: true, length: { maximum: 25 }
  validates :dueDate, presence: true
  validate :due_date_cannot_be_in_the_past

  attr_accessible :title, :note, :dueDate, :completionDate

  def due_date_cannot_be_in_the_past
    errors.add(:dueDate, 'Tasks can be done only in the future') if dueDate.present? && dueDate < Date.today
  end
end
