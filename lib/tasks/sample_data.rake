namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    Organization.create!(org_name: "org", org_country: "India")

    50.times do |n|
      org_name = "org#{n+1}"
      org_country = "India"
    Organization.create!(org_name: org_name, org_country: org_country)
    Projectdetail.create!(proj_name: "Example Project",
                 proj_code: "ex1",
                 proj_desc: "NA",
                 biling_type: "FIXED",
                 start_date: "7/7/14",
                 dead_line_date: "7/7/15",
                 end_date: "28/2/14",
                 github_url: "fsdfsd",
                 status: "POC",
                 organization_id: [1,2,3,4].sample)
    50.times do |n|
      proj_name  = Faker::Name.name
      proj_code = "ex-#{n+1}"
      proj_desc = "NA"
      biling_type  = "FIXED"
      start_date = "7/7/14"
      dead_line_date = "7/7/15"
      end_date = "28/2/14"
      github_url = "fsdfsd"
      status = "POC"
      organization_id = [1,2,3,4].sample
      Projectdetail.create!(proj_name: proj_name,
                   proj_code: proj_code,
                   proj_desc: proj_desc,
                   biling_type: biling_type,
                   start_date: start_date,
                   dead_line_date: dead_line_date,
                   end_date: end_date,
                   github_url: github_url,
                   status: status,
                   organization_id: organization_id)
    end
    end
  end
end