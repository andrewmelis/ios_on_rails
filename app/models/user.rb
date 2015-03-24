class User < ActiveRecord::Base
  validates :device_token, presence: true
end
