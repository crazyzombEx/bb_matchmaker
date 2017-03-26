class RoomsController < ApplicationController

	def index
		@rooms = Room.all
	end

	def show
		@room = Room.find(params[:id])
	end
	
	def new
		#roomのroommasterにセッションをつないでいるユーザーのnicknameを割り振りたいんだが
		@room = Room.new
		@area = Room::AREA
		#@room[:roommaster] = current_user[:nickname]
	end
		
	def create
		@room = Room.new(room_params)
		@room[:roommaster] = current_user.nickname
		@room.save
		redirect_to @room
	end
	
	def update
		@room = Room.find(params[:id])
		if @room.update(room_params)
			redirect_to rooms_path
		else
			render 'edit'
		end
	end

	def destroy
		@room = Room.find(params[:id])
		@room.destroy
		redirect_to rooms_path
	end

	def edit
		@room = Room.find(params[:id])
		@area = Room::AREA		
	end
	
	private 
		def room_params
			params[:room].permit(:title , :area , :keyword , :roommaster)
		end

end
