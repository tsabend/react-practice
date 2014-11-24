class CommentsController < ApplicationController

	def index
		@comments = Comment.all
	end

	def create
		comment = Comment.new(comment_params)
		comment.save!
		redirect_to '/'
	end


	private

	def comment_params 
		params.require(:comment).permit(:author, :body)
	end

end
