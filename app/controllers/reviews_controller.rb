class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new
    @review.review = params[:review]
    @review.quarter_taken = params[:quarter_taken]
    @review.user_id = params[:user_id]
    @review.course_id = params[:course_id]
    @review.professor_id = params[:professor_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review created successfully."
    else
      render 'new'
    end
  end

  def edit
    @review = Review.find(params[:id])
  end

  def update
    @review = Review.find(params[:id])

    @review.review = params[:review]
    @review.quarter_taken = params[:quarter_taken]
    @review.user_id = params[:user_id]
    @review.course_id = params[:course_id]
    @review.professor_id = params[:professor_id]

    if @review.save
      redirect_to "/reviews", :notice => "Review updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @review = Review.find(params[:id])

    @review.destroy

    redirect_to "/reviews", :notice => "Review deleted."
  end
end
