class CommentsController < ApplicationController

	def index
		@comments = Comment.all
		puts "hey"
		render 'index'
	end

	def create
		Comment.new(params[])
	end


	private

	def comment_params 
		 params.permit(:body, :sentence_id)
	end

end
