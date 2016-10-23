class Crib < ApplicationRecord
  mount_uploaders :pics, PicUploader
  belongs_to :member
end
