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
#

require 'rails_helper'

RSpec.describe Style, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
