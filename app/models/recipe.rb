class Recipe < ActiveRecord::Base
  has_many :quantities
  has_many :ingredients,
           :through => :quantities,
           :source => :ingredient

  accepts_nested_attributes_for :quantities,
           :reject_if => :all_blank,
           :allow_destroy => true
  accepts_nested_attributes_for :ingredients

  validates :title, presence:true
  validates :instructions, presence:true
  validates :description, presence:true
  validates :image, presence:true
  validates :amount, presence:true
  validates :name, presence:true
end
