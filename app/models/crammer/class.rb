class Crammer::Class < ApplicationRecord

  belongs_to :user, inverse_of: :crammer_classes

  validates :name, :user, presence: true
end
