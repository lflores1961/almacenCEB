class Input < ApplicationRecord
  belongs_to :product
  belongs_to :supplier
  belongs_to :user
end
