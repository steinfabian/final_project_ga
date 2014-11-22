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

require 'rails_helper'

RSpec.describe Print, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
