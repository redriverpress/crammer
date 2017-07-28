class User < ApplicationRecord

  ACCESS_LEVELS = %i(guest customer admin)

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  enum access: ACCESS_LEVELS

  has_many :crammer_classes, class_name: 'Crammer::Class'
  has_many :crammer_placements, class_name: 'Crammer::Placement'

  protected

  def password_required?
    reset_password_token.present? || password_confirmation.present? || new_record?
  end
end
