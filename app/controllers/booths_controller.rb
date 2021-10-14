class BoothsController < ApplicationController
  before_action :authenticate_user!, except: [:index]

  def index
  end

  def new
    @booth = Booth.new
  end
  
end
