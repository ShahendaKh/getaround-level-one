class Currency < ApplicationRecord

    #### Validations #######################
    validates :name, :code, :presence => true
    validates :code, length: { is: 3 }
    validates_uniqueness_of :code
end
