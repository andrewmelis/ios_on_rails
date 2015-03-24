json.cache! event do
  json.address event.address
  json.name event.name
  json.lat event.lat
  json.lon event.lon

  json.started_at event.started_at
  json.ended_at event.ended_at
  json.created_at event.created_at
  json.updated_at event.updated_at

  json.owner do
    json.id event.owner.id
  end
end
