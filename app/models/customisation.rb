# == Schema Information
#
# Table name: customisations
#
#  id         :integer          not null, primary key
#  product_id :integer
#  part_id    :integer
#  print_id   :integer
#  style_id   :integer
#  created_at :datetime
#  updated_at :datetime
#

class Customisation < ActiveRecord::Base
	belongs_to :product
	belongs_to :part
	belongs_to :print
	belongs_to :style
end
