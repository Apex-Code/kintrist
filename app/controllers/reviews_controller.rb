class ReviewsController < ApplicationController

	def new
		@review = Review.new
	end

	def create
		@review = Review.new(review_params)
		@review.book_id = @book.id
		@review.user_id = current_user.id

		if @review.save
			redirect_to book_path(@book)
		else
			render 'new'
		end
	end

	def edit
	end

	def update
		if @review.update(review_params)
			redirect_to book_path(@book)
		else
			render 'edit'
		end
	end

	def destroy
		@review.destroy
		redirect_to book_path(@book)
	end

end
