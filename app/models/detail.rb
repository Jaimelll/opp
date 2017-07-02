class Detail < ApplicationRecord


    validates :area, presence: true
    validates :pfecha, presence: true
    validates :descripcion, presence: true
    validates :cantidad, presence: true





  belongs_to :item
  belongs_to :admin_user
end
