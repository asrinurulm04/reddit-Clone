class Community < ApplicationRecord
  belongs_to :account
  validates_presence_of :url, :name, :rules
  has_many :posts
  has_many :subscription
  has_many :subscribers, through: :subscription, source: :account

end