class Broker < ApplicationRecord
  # Direct associations

  # Indirect associations

  # Validations

  validates :phone, :uniqueness => true

end
