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

require 'rails_helper'

RSpec.describe Order, :type => :model do
  it { should belong_to :customer }
  it { should have_many :products }
end
