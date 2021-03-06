class Event < ActiveRecord::Base
  validates :name, presence: true
  validates :lat, presence: true
  validates :lon, presence: true
  validates :started_at, presence: true

  belongs_to :owner, foreign_key: 'user_id', class_name: 'User'
end
