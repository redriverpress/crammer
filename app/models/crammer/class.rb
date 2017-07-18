class Crammer::Class < ApplicationRecord

  belongs_to :user, inverse_of: :crammer_classes

  validates :name, :user, presence: true

  def self.table_name_prefix
    'crammer_'
  end
end
