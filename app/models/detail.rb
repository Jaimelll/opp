class Detail < ApplicationRecord


    validates :parte, presence: true
    validates :pfecha, presence: true
    validates :descripcion, presence: true
    




  belongs_to :item
  belongs_to :admin_user
end
