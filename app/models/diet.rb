class Diet < ApplicationRecord
  belongs_to :user
  belongs_to :meal
  has_rich_text :description
end
