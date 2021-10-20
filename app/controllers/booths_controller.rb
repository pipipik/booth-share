class BoothsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

  def index
    @booths = Booth.all.order("id DESC")
  end

  def new
    @booth = Booth.new
  end

  def create
    @booth = Booth.new(booth_params)
    if @booth.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show
    @booth = Booth.find(params[:id])
    @comment = Comment.new
  end

  def edit
    @booth = Booth.find(params[:id])
  end

  def update
    @booth = Booth.find(params[:id])
    @booth.update(booth_params)
    if @booth.save
      redirect_to booth_path
    else
      render :edit
    end
  end

  def destroy
    @booth = Booth.find(params[:id])
    @booth.destroy
    redirect_to root_path
  end
  
  private
  
  def booth_params
    params.require(:booth).permit(:image, :prize_name, :machine_name, :category).merge(user_id: current_user.id)
  end
  
end
