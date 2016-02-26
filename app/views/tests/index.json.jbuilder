json.array!(@tests) do |test|
  json.extract! test, :id, :year, :teacher, :semester, :test_number, :file_url, :course_id
  json.url test_url(test, format: :json)
end
