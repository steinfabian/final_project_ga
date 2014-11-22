# == Schema Information
#
# Table name: orders
#
#  id          :integer          not null, primary key
#  customer_id :integer
#  status      :string(255)
#  total_price :float
#  created_at  :datetime
#  updated_at  :datetime
#

class Order < ActiveRecord::Base
	belongs_to :customer
	has_many :products
end
