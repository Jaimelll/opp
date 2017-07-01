class Item < ApplicationRecord

  validates :responsable, presence: true
  validates :objetivo, presence: true
  validates :actividad, presence: true
  validates :unidad, presence: true


  belongs_to :admin_user
end
