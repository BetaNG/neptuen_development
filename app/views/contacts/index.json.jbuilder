json.array!(@contacts) do |contact|
  json.extract! contact, :name, :department, :duty, :age, :sex, :birthdate, :address, :mobile, :tel, :email, :tencent, :idcard, :hobby, :nation, :marital, :blood, :height, :weight, :zodiac, :school, :science, :note
  json.url contact_url(contact, format: :json)
end
