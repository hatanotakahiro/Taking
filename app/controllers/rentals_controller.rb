class RentalsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :search]
  def index
      rentals = Rental.includes(:user).order("created_at DESC")
      @rentals = rentals.page(params[:page]).per(8)
      @search_rental = Rental.new
      @search_user = User.new
  end

  def search
    @rentals = Rental.where('equipment LIKE ?').order("created_at DESC") | Rental.where('status LIKE ?').order("created_at DESC") | User.where('name LIKE ?').order("created_at DESC")
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    if @rental.save
      redirect_to root_path
    else
      render :new
    end
  end

  def show

  end

  def delete

  end

  private
  def rental_params
    params.require(:rental).permit(:equipment, :reason, :code, :reserve_schedule_date, :return_schedule_date, :status).merge(user_id: current_user.id)
  end

  def search_params
    params.require(:rental).permit(:rental_title, :tag_list)
  end

  def set_rental
    @rental = rental.find(params[:id])
  end
  
  def admin?
    unless current_user.admin?
      redirect_to root_path
    end
  end

end
