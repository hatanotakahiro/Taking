class RentalsController < ApplicationController
  before_action :authenticate_user!, except: [ :index]
  def index
    @rental = Rental.includes(:user).order("created_at DESC")
  end

  def new

  end

  def show

  end

  def delete

  end

end
