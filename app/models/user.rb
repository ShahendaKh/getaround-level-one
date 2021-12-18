class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User
  # Include default devise modules.
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable,
          :confirmable, :omniauthable


   #### Relations ##############################
   belongs_to :actable, polymorphic: true

   #### Validations ############################
   validates :name, length: { minimum: 2 }

   def confirmation_required?
    !confirmed?
  end
end
