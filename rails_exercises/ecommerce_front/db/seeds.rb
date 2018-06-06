# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
ShippingInfo.create([{ content: 'Free Delivery Worldwide', header: 'Click here for more info' },
                     { content: '30 Days Return', header: 'Simply return it within 30 days for an exchange.' },
                     { content: 'Store Opening', header: 'Shop open from Monday to Sunday' }])