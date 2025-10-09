class Fashion < ApplicationRecord
  has_one_attached :image  # ActiveStorageで画像添付

  # バリデーション
  validates :weather, presence: true
  validates :temperature, presence: true
  validates :recorded_on, presence: true
  # 画像が必須なら uncomment
  # validates :image, presence: true

  # 新規作成時に recorded_on が空なら今日に設定
  before_validation :set_default_recorded_on, on: :create

  # 今日の気温に近いコーデを取得するスコープ（例）
  scope :for_temperature, ->(temp) { where(temperature: temp - 2..temp + 2) }

  private

  def set_default_recorded_on
    self.recorded_on ||= Date.today
  end
end
