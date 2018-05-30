class Industry < ApplicationRecord
  # Direct associations

  has_many   :deals,
             :dependent => :nullify

  # Indirect associations

  # Validations

end
