json.array!(@rejection_letters) do |rejection_letter|
  json.extract! rejection_letter, :id
  json.url rejection_letter_url(rejection_letter, format: :json)
end
