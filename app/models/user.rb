class User < ApplicationRecord
  
  belongs_to :city
  has_many :gossips, dependent: :destroy

  validates :email, 
    uniqueness: {message: "Email déjà utilisé"}, 
    presence: {message: "Email obligatoire"}
  validates :city_id,
    presence: {message: "La ville est obligatoire"}
end
