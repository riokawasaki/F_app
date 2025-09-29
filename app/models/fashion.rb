class Fashion < ApplicationRecord
    has_one_attached :image  # ActiveStorageで画像添付
    validates :weather, presence: true
    validates :temperature, presence: true
    validates :recorded_on, presence: true
end
