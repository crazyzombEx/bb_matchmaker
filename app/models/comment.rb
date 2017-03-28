class Comment < ApplicationRecord
  belongs_to :room
  
	default_scope -> { order(created_at: :desc) }

end
