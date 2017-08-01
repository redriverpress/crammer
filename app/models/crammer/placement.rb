class Crammer::Placement < ApplicationRecord
  belongs_to :user, inverse_of: :crammer_classes

  validates :crammer_class, :user, presence: true

  belongs_to :crammer_class, class_name: 'Crammer::Class'
end
