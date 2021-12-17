class Driver < ApplicationRecord
    mount_uploader :lisence_image, AvatarUploader

    #### Relations ###################
    has_one :user

    accepts_nested_attributes_for :user
end
