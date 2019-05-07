class User < ApplicationRecord
  has_many :favorites
  has_many :games, through: :favorites
end
