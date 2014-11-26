# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Customer.destroy_all
Customisation.destroy_all
Order.destroy_all
Part.destroy_all
Print.destroy_all
Product.destroy_all
Style.destroy_all


Customer.create(:email => "fabian@fabian", :password_digest => 'fabian', :first_name => 'fabian', :last_name => 'test', :address => 'test address')
Customer.create(:email => "leonie@leonie", :password_digest => 'leonie', :first_name => 'leonie', :last_name => 'test', :address => 'test address')
Customer.create(:email => "farina@farina", :password_digest => 'farina', :first_name => 'farina', :last_name => 'test', :address => 'test address')



Product.create(:kind => 'Top', :name => 'hard coded bandeau', :size => 'M', :order_id => 1, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'Bottom', :name => 'hard coded bandeau', :size => 'L', :order_id => 1, :image => 'bandeau_bottom_floral.png', :price => 59.00)
Product.create(:kind => 'Top', :name => 'hard coded bandeau', :size => 'S', :order_id => 2, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'Bottom', :name => 'hard coded bandeau', :size => 'S', :order_id => 2, :image => 'bandeau_bottom_floral.png', :price => 59.00)
Product.create(:kind => 'Top', :name => 'hard coded bandeau', :size => 'L', :order_id => 3, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'Bottom', :name => 'hard coded bandeau', :size => 'M', :order_id => 3, :image => 'bandeau_bottom_floral.png', :price => 59.00)


Order.create(:customer_id => 1, :status => 'completed', :total_price => 148.00)
Order.create(:customer_id => 2, :status => 'in_progress', :total_price => 148.00)
Order.create(:customer_id => 3, :status => 'completed', :total_price => 148.00)


Part.create(:name => 'Cup')
Part.create(:name => 'Strap')
Part.create(:name => 'Bottom')

Print.create(:name => 'Tropical', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Print.create(:name => 'Ice-Cream', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Print.create(:name => 'Retro', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Print.create(:name => 'Pineapple', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Print.create(:name => 'Floral', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Print.create(:name => 'Geo', :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')

Style.create(:name => 'Bandeau-Top', :price => 89.00, :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Style.create(:name => 'Triangle-Top', :price => 89.00, :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Style.create(:name => 'Bandeau-Bottom', :price => 59.00, :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')
Style.create(:name => 'Triangle-Bottom', :price => 59.00, :thumbnail => 'bandeau_top_floral.png', :image => 'bandeau_top_floral.png')

Customisation.create(:product_id => 1, :part_id => 1, :print_id => 1, :style_id => 1)
Customisation.create(:product_id => 1, :part_id => 2, :print_id => 1, :style_id => 1)
Customisation.create(:product_id => 2, :part_id => 3, :print_id => 2, :style_id => 3)
Customisation.create(:product_id => 2, :part_id => 4, :print_id => 2, :style_id => 3)
Customisation.create(:product_id => 3, :part_id => 1, :print_id => 3, :style_id => 2)
Customisation.create(:product_id => 3, :part_id => 2, :print_id => 3, :style_id => 2)
Customisation.create(:product_id => 4, :part_id => 3, :print_id => 4, :style_id => 4)
Customisation.create(:product_id => 4, :part_id => 4, :print_id => 4, :style_id => 4)
Customisation.create(:product_id => 5, :part_id => 1, :print_id => 5, :style_id => 1)
Customisation.create(:product_id => 5, :part_id => 2, :print_id => 5, :style_id => 1)
Customisation.create(:product_id => 6, :part_id => 3, :print_id => 6, :style_id => 3)
Customisation.create(:product_id => 6, :part_id => 4, :print_id => 6, :style_id => 3)

