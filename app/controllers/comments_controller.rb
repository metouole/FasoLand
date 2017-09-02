class CommentsController < ApplicationController

	def create
		@message = Message.find(params[:message_id])
		@comment = @message.comments.create(comment_params)
		@comment.utilisateur_id = current_utilisateur.utilisateur_id
		if @comment.save
			redirect_to message_path(@message)
		else
			render 'new'
		end
	end

	private


	def comment_params
		params.require(:comment).permit(:content)
	end


end
