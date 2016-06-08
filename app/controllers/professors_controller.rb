class ProfessorsController < ApplicationController
  def index
    @professors = Professor.order("first_name")
  end

  def show
    @professor = Professor.find(params[:id])
    @review = Review.new
  end

  def new
    @professor = Professor.new
  end

  def create
    @professor = Professor.new
    @professor.first_name = params[:first_name]


    if @professor.save
      redirect_to "/professors", :notice => "Professor created successfully."
    else
      render 'new'
    end
  end

  def edit
    @professor = Professor.find(params[:id])
  end

  def update
    @professor = Professor.find(params[:id])

    @professor.first_name = params[:first_name]


    if @professor.save
      redirect_to "/professors", :notice => "Professor updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @professor = Professor.find(params[:id])

    @professor.destroy

    redirect_to "/professors", :notice => "Professor deleted."
  end
end
