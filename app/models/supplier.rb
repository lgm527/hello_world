class Supplier < ApplicationRecord
    validates :name, :ein, :address_1, :city, :state, :phone_number, presence: true
    validates_uniqueness_of :ein
end
