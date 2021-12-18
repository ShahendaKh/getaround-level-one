class CarOwner < ApplicationRecord

    #### Relations ###################
    has_one :user, as: :actable

    accepts_nested_attributes_for :user
end
