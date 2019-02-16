class PostsController < ApplicationController
<<<<<<< HEAD

	before_action :set_post, only: [:show, :edit, :update, :destroy]

=======
>>>>>>> 6e2bcf4d32eb2f8ad5a5c79fcfa2905e732957c6
	def index
		@posts = Post.all
	end

	def show
<<<<<<< HEAD
=======
		@post = Post.find(params[:id])
>>>>>>> 6e2bcf4d32eb2f8ad5a5c79fcfa2905e732957c6
	end

	def new
		@post = Post.new
	end
<<<<<<< HEAD

	def create
		@post = Post.new(post_params)
		if @post.save
			redirect_to @post
		else
			render :new
		end
	end

	def edit
	end

	def update
		if @post.update_attributes(post_params)
			redirect_to @post
		else
			render :edit
		end
	end

	def destroy
		@post.destroy
		redirect_to posts_path
	end

	private

	def set_post
		@post = Post.find(params[:id])
	end

	def post_params
		params.require(:post).permit(:title, :summary, :body)
	end
=======
>>>>>>> 6e2bcf4d32eb2f8ad5a5c79fcfa2905e732957c6
end
