class Plan < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20 }
  validates :memo, length: {maximum:500}
  validates :start_at,presence: true
  validates :end_at,presence: true
  validate :start_end_check
    
  def start_end_check
    return false if end_at.blank? || start_at.blank?
    errors.add(:end_at, "は開始日より遅い日付にして下さい" )if self.start_at > self.end_at
  end
    
end
