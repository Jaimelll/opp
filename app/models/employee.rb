class Employee < ApplicationRecord
mount_uploader :foto, FotoUploader

  belongs_to :admin_user
  has_many :families


  validates :ape_pat, presence: true
  validates :ape_mat, presence: true
    validates :nombres, presence: true


end
