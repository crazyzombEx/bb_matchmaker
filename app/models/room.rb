class Room < ApplicationRecord
	has_many :comments
	default_scope -> { order(created_at: :desc) }
	validates :title, presence: true , length: { maximum: 20 }
	validates :content, length: { maximum: 140 }
	
end
