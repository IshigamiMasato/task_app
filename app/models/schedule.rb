class Schedule < ApplicationRecord
    validates :title, :start_date, :end_date, presence: true
    validate :pretend_ago
    
    require "date"
    def pretend_ago
      errors.add(:end_date, 'は今日以降の日付で選択してください') if end_date.nil? ||end_date < Date.today.next_day
    end
end
