class ReviewsController < ApplicationController

    def new
        @review = Review.new
    end

    def create
        @review = Review.new(review_params)
        if @review.valid?
            @review.save
            redirect_to @review
        else
            render :new
        end
    end


end
