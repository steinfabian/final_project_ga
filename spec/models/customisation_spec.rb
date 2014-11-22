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

require 'rails_helper'

RSpec.describe Customisation, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
