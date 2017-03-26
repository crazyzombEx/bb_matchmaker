class CommentsController < ApplicationController

	def create
		@room = Room.find(params[:room_id])
		@comment = @room.comments.create(comment_params)
		@comment[:name] = current_user.nickname
		@comment[:thumb] = current_user.image_url
		@comment.save
		redirect_to room_path(@room.id)
	end

	private

		def comment_params
			params[:comment].permit(:content , :name , :thumb)
		end

end
