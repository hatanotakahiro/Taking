class RentalsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :search]
  def index
      rentals = Rental.includes(:user).order("created_at DESC")
      @rentals = rentals.page(params[:page]).per(8)
      @new_rental = Rental.new
  end

  def search
    @rental = Rental.includes(:user).order("created_at DESC")
    @rentals = Rental.where('movie_title LIKE ?', "%#{movie_params[:tag_list]}%").order("created_at DESC")
  end

  def new

  end

  def show

  end

  def delete

  end

end
