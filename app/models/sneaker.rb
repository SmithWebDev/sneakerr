# == Schema Information
#
# Table name: sneakers
#
#  id          :bigint           not null, primary key
#  brand       :string
#  description :text
#  name        :string
#  price       :decimal(, )
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Sneaker < ApplicationRecord
  has_one_attached :image
end
