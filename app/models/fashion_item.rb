class FashionItem < ApplicationRecord
  belongs_to :fashion
  has_one_attached :image
end
