# == Schema Information
#
# Table name: auctions
#
#  id          :bigint           not null, primary key
#  deadline    :datetime
#  description :string
#  title       :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class AuctionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
