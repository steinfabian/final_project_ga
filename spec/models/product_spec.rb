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

require 'rails_helper'

RSpec.describe Product, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
