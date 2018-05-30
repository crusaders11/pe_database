class Note < ApplicationRecord
  # Direct associations

  belongs_to :deals,
             :class_name => "Deal"

  # Indirect associations

  # Validations

end
