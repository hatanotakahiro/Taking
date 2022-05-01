class RentalsController < ApplicationController
  before_action :authenticate_user!
  def index
      rentals = Rental.includes(:user).order("created_at DESC")
      @rentals = rentals.page(params[:page]).per(8)
      @search_rental = Rental.new
      @status = Rental.new
  end

  def search
    if rental_params[:equipment_id].present?
      @rentals = Rental.where('equipment_id LIKE ?', "%#{rental_params[:equipment_id]}%")
    elsif rental_params[:status_id].present?
      @rentals = Rental.where('status_id LIKE ?', "%#{rental_params[:status_id]}%")
    elsif rental_params[:rental_user].present?
      @rentals = Rental.where('rental_user LIKE ?', "%#{rental_params[:rental_user]}%")
    else
      @rentals = Rental.none
    end
  end

  def permission
    @rental = Rental.find(rental_params[:id])
  end

  def no_permission
    @rental = Rental.find(rental_params[:id])
  end

  def update
    @rental = Rental.find(rental_params[:id])
    if @rental.status_id == 1 && rental_params[:permission]
      @rental.status_id = 2
      @rental.reserve_actual_date = Date.today
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    elsif @rental.status_id == 1
      @rental.status_id = 6
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    end
  end

  def new
    @rental = Rental.new
  end

  def create
    @rental = Rental.new(rental_params)
    @rental.rental_user = current_user.name
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
    params.require(:rental).permit(:id, :equipment_id, :reason, :code, :reserve_schedule_date, :return_schedule_date, :status_id, :rental_user, :permission).merge(user_id: current_user.id)
  end

  def set_rental
    @rental = Rental.find(params[:id])
  end
  
  def admin?
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
