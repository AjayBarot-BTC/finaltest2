class Organization < ActiveRecord::Base
	validates :org_name, presence: true
	validates :org_country, presence: true, length: { maximum: 50 }

has_many :projectdetails

end
