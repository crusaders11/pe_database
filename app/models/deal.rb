class Deal < ApplicationRecord
  # Direct associations

  belongs_to :broker,
             :required => false,
             :counter_cache => true

  belongs_to :industry,
             :counter_cache => true

  has_many   :notes,
             :foreign_key => "deals_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  validates :deal_name, :uniqueness => true

  validates :deal_name, :presence => true

end
