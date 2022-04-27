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
class Auction < ApplicationRecord
end
