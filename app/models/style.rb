# == Schema Information
#
# Table name: styles
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  price      :float
#  thumbnail  :text
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#  kind       :string(255)
#

class Style < ActiveRecord::Base
	has_many :customisations
end
