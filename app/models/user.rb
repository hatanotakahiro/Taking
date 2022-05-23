class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,:authentication_keys => [:email]

  # emailを使わない場合
  # def email_required?
  #   false
  # end

  # def email_changed?
  #   false
  # end

  # def will_save_change_to_email?
  #   false
  # end

  has_many :equipments
  has_many :rentals

  validates :name, presence: true
end
