json.array!(@people) do |person|
  json.extract! person, :fname, :mname, :lname, :address, :phno, :email
  json.url person_url(person, format: :json)
end