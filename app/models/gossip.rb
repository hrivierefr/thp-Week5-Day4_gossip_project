class Gossip < ApplicationRecord
  belongs_to :author, class_name: 'User'
#  has_and_belongs_to_many :tags
  has_many :comments
  has_many :likes 
end
