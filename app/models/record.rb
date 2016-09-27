class Record < ApplicationRecord
  belongs_to :book_identification
  belongs_to :user
  belongs_to :city
end
