json.array! @assistants.each do |assistant|
  json.id assistant.id
  json.avatar assistant.avatar
  json.occupation assistant.occupation
  json.name assistant.name
  json.city assistant.city
  json.years_exp assistant.years_exp
  json.day_rate assistant.day_rate
  json.bio assistant.bio
end