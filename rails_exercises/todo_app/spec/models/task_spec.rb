require 'rails_helper'

describe Task do
  let(:title) { 'task title' }
  let(:due_date) { Date.today + 1.days }

  describe 'validation checks' do
    context 'for task title' do
      it 'should invalidate empty title' do
        expect { Task.create!(title: nil, dueDate: due_date) }
          .to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Title can't be blank")
      end
      it 'should invalidate whitespace title' do
        expect { Task.create!(title: '   ', dueDate: due_date) }
          .to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Title can't be blank")
      end
      
      it 'should invalidate titles longer than 25 chars' do
        expect { Task.create!(title: '1'* 26, dueDate: due_date) }
          .to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Title is too long (maximum is 25 characters)")
      end

      it 'should invalidate empty due date' do
        expect { Task.create!(title: title, dueDate: nil) }
          .to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Duedate can't be blank")
      end
      
      it 'should invalidate due dates in the past' do
        expect { Task.create!(title: title, dueDate: Date.today - 3.days) }
          .to raise_error(ActiveRecord::RecordInvalid, "Validation failed: Duedate Tasks can be done only in the future")
      end
    end
  end

  describe 'when task is created' do
    it 'should round days left to ceiling' do
      deadline_after_days = 3
      task = Task.create!(title: title, dueDate: (Time.zone.now + deadline_after_days.day).to_datetime)

      expect(task.days_left).to eq deadline_after_days
    end
  end
end
