json.array!(@tickets) do |ticket|
  json.extract! ticket, :id, :user_id, :showing_id
  json.url ticket_url(ticket, format: :json)
end
