class CoursesController < ApplicationController
  def index
    @courses = Course.order("title")
  end

  def show
    @course = Course.find(params[:id])
    @review = Review.new
  end

  def new
    @course = Course.new
  end

  def create
    @course = Course.new
    @course.title = params[:title]
    @course.course_number = params[:course_number]

    if @course.save
      redirect_to "/courses", :notice => "Course created successfully."
    else
      render 'new'
    end
  end

  def edit
    @course = Course.find(params[:id])
  end

  def update
    @course = Course.find(params[:id])

    @course.title = params[:title]
    @course.course_number = params[:course_number]

    if @course.save
      redirect_to "/courses", :notice => "Course updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @course = Course.find(params[:id])

    @course.destroy

    redirect_to "/courses", :notice => "Course deleted."
  end
end
