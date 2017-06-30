class Formula < ApplicationRecord
  belongs_to :product
  belongs_to :admin_user
end
