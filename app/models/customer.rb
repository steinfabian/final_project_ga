# == Schema Information
#
# Table name: customers
#
#  id              :integer          not null, primary key
#  email           :string(255)
#  password_digest :string(255)
#  first_name      :string(255)
#  last_name       :string(255)
#  address         :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

class Customer < ActiveRecord::Base
	has_many :orders
	has_many :products, through: :orders
end
