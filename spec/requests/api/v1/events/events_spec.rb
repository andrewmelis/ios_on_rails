require 'rails_helper'

describe 'GET /v1/events/:id' do
  it "returns an event by id" do
    event = create(:event)

    get "/v1/events/#{event.id}"

    expect(response_json).to eq(
      {
        "name" => event.name,
        "address" => event.address,
        "ended_at" => event.ended_at.as_json, # jbuilder defaults to iso8601
        "lat" => event.lat,
        "lon" => event.lon,
        "started_at" => event.started_at.as_json,

        "created_at" => event.created_at.as_json,
        "updated_at" => event.updated_at.as_json,

        "owner" => {
          "id" => event.owner.id,
        }
      })
  end
end
