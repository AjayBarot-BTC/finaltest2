class Projectdetail < ActiveRecord::Base
validates :proj_desc, presence: true
validates :biling_type, presence: true
validates :proj_name, presence: true, length: { maximum: 50 }
end