class Book < ApplicationRecord
	belongs_to :user
	attachment :image
	validates :title, length: { minimum: 1 }
	validates :opinion, length: { minimum: 1, maximum: 200 }
end
