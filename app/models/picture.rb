class Picture < ActiveRecord::Base
  belongs_to :place
  mount_uploader :photo, PhotoUploader
end
