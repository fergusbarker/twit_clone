# == Schema Information
# Schema version: <timestamp>
#
# Table name: users
#
# id :integer
# name :string(255)
# email :string(255)
# created_at :datetime
# updated_at :datetime
#

class User < ActiveRecord::Base
  attr_accessible :name, :email

  validates :name, :presence => true
end
