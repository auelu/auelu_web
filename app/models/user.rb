class User < ApplicationRecord
     mount_uploader :photo, UserUploader
end
