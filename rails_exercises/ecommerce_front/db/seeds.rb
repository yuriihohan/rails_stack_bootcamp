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

# rubocop:disable Metrics/LineLength
InspirationBlock.create([{ header: 'Black Friday Guide: Best Sales & Discount Cod',
                           text: 'Duis ut velit gravida nibh bibendum commodo. Sus-pendisse pellentesque mattis augue id euismod. Inter-dum et malesuada fames' },
                         { header: 'The White Sneakers Nearly Every Fashion Girls Own',
                           text: 'Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame' },
                         { header: 'New York SS 2018 Street Style: Annina Mislin',
                           text: 'Proin nec vehicula lorem, a efficitur ex. Nam vehicula nulla vel erat tincidunt, sed hendrerit ligula porttitor. Fusce sit amet maximus nunc' }])
# rubocop:enable Metrics/LineLength

FeatureProduct.create([{ header: 'Herschel supply co 25l', price: 75.00 },
                       { header: 'Denim jacket blue', price: 92.00 },
                       { header: 'Coach slim easton black', price: 165.90 },
                       { header: 'Frayed denim shorts', price: 165.90 },
                       { header: 'Herschel supply co 25l', price: 75.00 },
                       { header: 'Denim jacket blue', price: 92.00 },
                       { header: 'Coach slim easton black', price: 165.90 },
                       { header: 'Frayed denim shorts', price: 165.90 }])
