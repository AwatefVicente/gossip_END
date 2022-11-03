class Gossip < ApplicationRecord
  belongs_to :user
  has_many :tags

  validates :title, 
    presence: {message:"Titre obligatoire"}, 
    length: {minimum: 2,maximum: 18, message:"Le titre doit faire entre 2 et 18 caractères"}
  
  validates :content,
    presence: {message:"Gossip obligatoire"},
    length: {minimum: 10, message:"Le gossip doit faire minimum 10 caractères"}
end
