class MessagesController < ApplicationController
	before_action :authenticate_utilisateur!, except: [:index, :show]
	before_action :find_message, only: [:show, :edit, :update, :destroy]

	def index
		@messages = Message.all.order("created_at DESC")
	end

	def show
	end

	def new
		@message = current_utilisateur.messages.build
	end

	def create
		@message = current_utilisateur.messages.build(message_params)
		if @message.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @message.update(message_params)
			redirect_to message_path(@message)
		else
			render 'edit'
		end
	end

	def destroy
	end

	private

	def find_message
		@message = Message.find(params[:id])
	end

	def message_params
		params.require(:message).permit(:title, :description)
	end



end
