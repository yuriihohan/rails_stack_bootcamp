# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Task.create([{ title: 'Completed task', note: 'Follow best practices', completionDate: Date.today - 3.days,
               dueDate: Date.today + 1.days },
             { title: 'Urgent', note: 'Learn Rails', dueDate: Date.today + 4.days },
             { title: 'Moderate', note: 'Apply Rails', dueDate: Date.today + 9.days },
             { title: 'Long Go', note: 'Learn React', dueDate: Date.today + 40.days }])
