# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Task.create([{ title: 'Complete to Do app', note: 'Follow best practices', dueDate: Date.today + 3.days },
             { title: 'Complete Article app', note: 'Consider using Redis', dueDate: Date.today + 4.days }])
