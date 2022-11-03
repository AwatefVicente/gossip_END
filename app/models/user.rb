class User < ApplicationRecord
  has_secure_password

  belongs_to :city
  has_many :gossips, dependent: :destroy

  validates :email, 
    uniqueness: {message: "Email déjà utilisé"}, 
    presence: {message: "Email obligatoire"}
  validates :password, 
    presence: true, 
    length: { minimum: 6 }
  validates :city_id,
    presence: {message: "La ville est obligatoire"}
end
