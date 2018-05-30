class Broker < ApplicationRecord
  # Direct associations

  has_many   :deals

  # Indirect associations

  # Validations

  validates :company, :uniqueness => true

  validates :company, :presence => true

  validates :email, :uniqueness => true

  validates :name, :uniqueness => true

  validates :name, :presence => true

  validates :phone, :uniqueness => true

end
