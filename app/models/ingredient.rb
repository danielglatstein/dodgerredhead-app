class Ingredient < ActiveRecord::Base
  has_many :quantities
  has_many :recipes, through: :quantities,
  :source => :recipe

  validates :name, presence:true
end
