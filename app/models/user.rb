class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable, rememberable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :validatable

   #### Relations ##############################
   belongs_to :actable, polymorphic: true

   #### Validations ############################
   validates :name, length: { minimum: 2 }

end
