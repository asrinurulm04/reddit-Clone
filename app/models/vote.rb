class Vote < ApplicationRecord
  belongs_to :account
  belongs_to :post
  validates_presence_of :account_id, :scope, :post_id
  has_many  :comments
end