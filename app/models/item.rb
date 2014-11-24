class Item < ActiveRecord::Base
  belongs_to :list
  has_many :offers
end
