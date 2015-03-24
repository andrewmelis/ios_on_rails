require 'rails_helper'

describe Event, 'validations' do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:lat) }
  it { should validate_presence_of(:lon) }
  it { should validate_presence_of(:started_at) }
end

describe Event, 'associations' do
  it { should belong_to(:owner).class_name('User') }
end
