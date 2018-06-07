# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Task.create([{ title: 'Completed task', note: 'Follow best practices', completion_date: 3.days.ago,
               dueDate: 1.days.from_now },
             { title: 'Urgent', note: 'Learn Rails', dueDate: 4.days.from_now },
             { title: 'Moderate', note: 'Apply Rails', dueDate: 9.days.from_now },
             { title: 'Long Go', note: 'Learn React', dueDate: 40.days.from_now }])
