# == Schema Information
#
# Table name: hubs
#
#  id   :integer          not null, primary key
#  name :string
#

class Hub < ApplicationRecord
  has_many :users

  validates :name, presence: true
end
