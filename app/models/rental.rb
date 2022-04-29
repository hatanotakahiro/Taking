class Rental < ApplicationRecord

  belongs_to :user

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :equipment
  belongs_to_active_hash :status

  acts_as_paranoid

  with_options presence: true do
    validates :equipment_id
    validates :reason
    validates :code
    validates :reserve_schedule_date
    validates :return_schedule_date
  end
end
