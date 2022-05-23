class RentalsController < ApplicationController
  before_action :authenticate_user!
  def index
      rentals = Rental.includes(:user).order("created_at DESC")
      @rentals = rentals.page(params[:page]).per(10)
      @search_rental = Rental.new
      @status = Rental.new
  end

  def search
    if rental_params[:equipment_id].present?
      @rentals = Rental.where('equipment_id LIKE ?', "%#{rental_params[:equipment_id]}%").order("created_at DESC")
    elsif rental_params[:status_id].present?
      @rentals = Rental.where('status_id LIKE ?', "%#{rental_params[:status_id]}%").order("created_at DESC")
    elsif rental_params[:rental_user].present?
      @rentals = Rental.where('rental_user LIKE ?', "%#{rental_params[:rental_user]}%").order("created_at DESC")
    elsif rental_params[:code].present?
      @rentals = Rental.where('code LIKE ?', "%#{rental_params[:code]}%").order("created_at DESC")
    else
      @rentals = Rental.none
    end
    @status = Rental.new
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
      @rental.lending = "貸出中"
      @rental.reserve_actual_date = Date.today
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    elsif @rental.status_id == 1 && rental_params[:confirmation]
      @rental.status_id = 5
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    elsif @rental.status_id == 2 && rental_params[:permission]
      @rental.status_id = 3
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    elsif @rental.status_id == 3 && rental_params[:permission]
      @rental.status_id = 4
      @rental.lending = "返却済み"
      @rental.return_actual_date = Date.today
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    elsif @rental.status_id == 5 && rental_params[:permission]
      @rental.status_id = 6
      @rental.lending = "取消済み"
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :permission
      end
    else
      @rental.status_id = 8
      @rental.lending = "貸出却下"
      if @rental.update(rental_params)
        redirect_to root_path
      else
        render :no_permission
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
    params.require(:rental).permit(:id, :equipment_id, :reason, :code, :reserve_schedule_date, :return_schedule_date, :status_id, :rental_user, :permission, :confirmation, :lending).merge(user_id: current_user.id)
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
