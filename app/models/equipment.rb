class Equipment < ApplicationRecord

  belongs_to :user
  belongs_to :rental

end
