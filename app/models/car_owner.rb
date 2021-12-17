class CarOwner < ApplicationRecord

    #### Relations ###################
    has_one :user

    accepts_nested_attributes_for :user
end
