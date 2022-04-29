class RentalsController < ApplicationController
  before_action :authenticate_user!, except: [ :index, :search]
  def index
      rentals = Rental.includes(:user).order("created_at DESC")
      @rentals = rentals.page(params[:page]).per(8)
      @search_rental = Rental.new
      @search_user = User.new
  end

  def search
    if rental_params[:equipment_id].present?
      @rentals = Rental.where('equipment_id LIKE ?', "%#{rental_params[:equipment_id]}%")
    elsif rental_params[:status_id].present?
      @rentals = Rental.where('status_id LIKE ?', "%#{rental_params[:status_id]}%")
    elsif rental_params[:user_id].present?
      @rentals = Rental.where('name LIKE ?', "%#{rental_params[:user_id]}%")
    else
      @rentals = Rental.none
    end
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
    params.require(:rental).permit(:equipment_id, :reason, :code, :reserve_schedule_date, :return_schedule_date, :status_id).merge(user_id: current_user.id)
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
