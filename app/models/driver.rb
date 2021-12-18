class Driver < ApplicationRecord
    mount_uploader :license_image, AvatarUploader

    #### Relations ###################
    has_one :user, as: :actable

    accepts_nested_attributes_for :user
end
