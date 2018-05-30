class Deal < ApplicationRecord
  # Direct associations

  has_many   :notes,
             :foreign_key => "deals_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :deal_name, :uniqueness => true

  validates :deal_name, :presence => true

end
