class Crammer::Placement < ApplicationRecord
  belongs_to :user, inverse_of: :crammer_classes

  validates :crammer_classes, :user, presence: true
end
