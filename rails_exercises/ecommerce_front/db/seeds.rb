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

inspiration_block_image = File.new(Rails.root.join(Rails.root, 'app', 'assets', 'images', 'blog.jpg'))
# rubocop:disable Metrics/LineLength
InspirationBlock.create([{ header: 'Black Friday Guide: Best Sales & Discount Cod', image: inspiration_block_image,
                           text: 'Duis ut velit gravida nibh bibendum commodo. Sus-pendisse pellentesque mattis augue id euismod. Inter-dum et malesuada fames' },
                         { header: 'The White Sneakers Nearly Every Fashion Girls Own', image: inspiration_block_image,
                           text: 'Nullam scelerisque, lacus sed consequat laoreet, dui enim iaculis leo, eu viverra ex nulla in tellus. Nullam nec ornare tellus, ac fringilla lacus. Ut sit ame' },
                         { header: 'New York SS 2018 Street Style: Annina Mislin', image: inspiration_block_image,
                           text: 'Proin nec vehicula lorem, a efficitur ex. Nam vehicula nulla vel erat tincidunt, sed hendrerit ligula porttitor. Fusce sit amet maximus nunc' }])
# rubocop:enable Metrics/LineLength

feature_product_image = File.new(Rails.root.join(Rails.root, 'app', 'assets', 'images', 'item.jpg'))
FeatureProduct.create([{ header: 'Herschel supply co 25l', price: 75.00, image: feature_product_image  },
                       { header: 'Denim jacket blue', price: 92.00, image: feature_product_image  },
                       { header: 'Coach slim easton black', price: 165.90, image: feature_product_image  },
                       { header: 'Frayed denim shorts', price: 165.90, image: feature_product_image  },
                       { header: 'Herschel supply co 25l', price: 75.00, image: feature_product_image  },
                       { header: 'Denim jacket blue', price: 92.00, image: feature_product_image  },
                       { header: 'Coach slim easton black', price: 165.90, image: feature_product_image  },
                       { header: 'Frayed denim shorts', price: 165.90, image: feature_product_image  }])

image_file = File.new(Rails.root.join(Rails.root, 'app', 'assets', 'images', 'master-slide.jpg'))
SliderImage.create([{ up_header: 'Women Collection 2018', mid_header: 'New Arrivals', button_text: 'Shop Now', image: image_file },
                    { up_header: 'Women Collection 2019', mid_header: 'New Arrivals', button_text: 'Shop Now', image: image_file },
                    { up_header: 'Women Collection 2020', mid_header: 'New Arrivals', button_text: 'Shop Now', image: image_file }])
