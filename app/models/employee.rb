class Employee < ApplicationRecord
mount_uploader :foto, FotoUploader

  belongs_to :admin_user

end
