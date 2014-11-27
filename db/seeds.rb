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


Customer.create(:email => "fabian@fabian", :password => 'fabian', :password_confirmation => 'fabian', :first_name => 'fabian', :last_name => 'test', :address => 'test address')
Customer.create(:email => "leonie@leonie", :password => 'leonie', :password_confirmation => 'leonie', :first_name => 'leonie', :last_name => 'test', :address => 'test address')
Customer.create(:email => "farina@farina", :password => 'farina', :password_confirmation => 'farina', :first_name => 'farina', :last_name => 'test', :address => 'test address')



Product.create(:kind => 'top', :name => 'hard coded bandeau', :size => 'M', :order_id => 1, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'bottom', :name => 'hard coded bandeau', :size => 'L', :order_id => 1, :image => 'bandeau_bottom_floral.png', :price => 59.00)
Product.create(:kind => 'top', :name => 'hard coded bandeau', :size => 'S', :order_id => 2, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'bottom', :name => 'hard coded bandeau', :size => 'S', :order_id => 2, :image => 'bandeau_bottom_floral.png', :price => 59.00)
Product.create(:kind => 'top', :name => 'hard coded bandeau', :size => 'L', :order_id => 3, :image => 'bandeau_top_floral.png', :price => 89.00)
Product.create(:kind => 'bottom', :name => 'hard coded bandeau', :size => 'M', :order_id => 3, :image => 'bandeau_bottom_floral.png', :price => 59.00)


Order.create(:customer_id => 1, :status => 'completed', :total_price => 148.00)
Order.create(:customer_id => 2, :status => 'pending', :total_price => 148.00)
Order.create(:customer_id => 3, :status => 'completed', :total_price => 148.00)


Part.create(:name => 'cup')
Part.create(:name => 'strap')
Part.create(:name => 'bottom')

Print.create(:name => 'tropical', :thumbnail => 'print_tropical.png', :image => 'print_tropical.png')
Print.create(:name => 'ice', :thumbnail => 'print_ice.png', :image => 'print_ice.png')
Print.create(:name => 'retro', :thumbnail => 'print_retro.png', :image => 'print_retro.png')
Print.create(:name => 'pineapple', :thumbnail => 'print_pineapple.png', :image => 'print_pineapple.png')
Print.create(:name => 'floral', :thumbnail => 'print_floral', :image => 'print_floral.png')
Print.create(:name => 'geo', :thumbnail => 'print_geo', :image => 'print_geo.png')

Style.create(:name => 'bandeau', :kind => 'top', :price => 89.00, :thumbnail => 'top_style_bandeau_thumb.png', :image => 'top_bandeau_cup_empty_strap_empty.png')
Style.create(:name => 'triangle', :kind => 'top', :price => 89.00, :thumbnail => 'top_style_triangle_thumb.png', :image => 'top_triangle_cup_empty_strap_empty.png')
Style.create(:name => 'bandeau', :kind => 'bottom', :price => 59.00, :thumbnail => 'bottom_style_bandeau_thumb.png', :image => 'bottom_bandeau_bottom_empty.png')
Style.create(:name => 'triangle', :kind => 'bottom', :price => 59.00, :thumbnail => 'bottom_style_triangle_thumb.png', :image => 'bottom_triangle_bottom_empty.png')

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

