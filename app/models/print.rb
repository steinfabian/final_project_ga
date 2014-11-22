# == Schema Information
#
# Table name: prints
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  thumbnail  :text
#  image      :text
#  created_at :datetime
#  updated_at :datetime
#

class Print < ActiveRecord::Base
	has_many :customisations
end
