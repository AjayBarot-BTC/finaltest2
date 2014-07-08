class Projectdetail < ActiveRecord::Base
validates :proj_desc, presence: true
validates :biling_type, presence: true
validates :proj_name, presence: true, length: { maximum: 50 }

belongs_to :organization

#def self.search
#  if search
#    find(:all, :conditions => ['proj_name LIKE ? OR status LIKE ? OR org_id LIKE ?'"%#{search}%"])
#  else
#    find(:all)
#  end
#end

def projectdetails
	@projectdetails ||= find_projectdetails
end
#.where("proj_name LIKE ? OR status LIKE ?", "#{params[:search]}%", "#{params[:search]}%")
#projectdetails = Projectdetail.where("proj_name LIKE ?", "%#{search}%") 
#projectdetails = Projectdetail.where(status_id: status_id) 
#projectdetails = Projectdetail.where(org_id: org_id) 

end