class Crammer::Class < ApplicationRecord

  belongs_to :user, inverse_of: :crammer_classes

  validates :name, :user, presence: true

  has_many :crammer_placements, class_name: 'Crammer::Placement'
end
