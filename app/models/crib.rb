class Crib < ApplicationRecord
  mount_uploaders :pics, PicUploader
end
