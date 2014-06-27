json.array!(@projectdetails) do |projectdetail|
  json.extract! projectdetail, :id, :proj_name, :proj_code, :proj_desc, :biling_type, :start_date, :dead_line_date, :end_date, :github_url, :status
  json.url projectdetail_url(projectdetail, format: :json)
end
