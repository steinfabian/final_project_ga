# == Schema Information
#
# Table name: products
#
#  id         :integer          not null, primary key
#  kind       :string(255)
#  name       :string(255)
#  size       :string(255)
#  order_id   :integer
#  image      :text
#  price      :float
#  created_at :datetime
#  updated_at :datetime
#

class Product < ActiveRecord::Base
	belongs_to :orders
	has_many :customisations
end
