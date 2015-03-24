FactoryGirl.define do
  factory :event do
    name "super cool event"
    lat 90.to_f
    lon 91.to_f
    started_at Time.now
    association :owner, factory: :user
  end

  factory :user do
    device_token "fake token"
  end
end
