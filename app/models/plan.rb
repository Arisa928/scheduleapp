class Plan < ApplicationRecord
  validates :title, presence: true, length: {maximum: 20 }
  validates :memo, length: {maximum:500}
  validates :start_at,presence: true
  validates :end_at,presence: true
  validate :start_end_check
    
    def start_end_check
      return false if end_at.blank? || start_at.blank?
      if self.end_at < self.start_at
       errors.add( "開始日より前の日付に登録できません。")
      end
    end
    
end
