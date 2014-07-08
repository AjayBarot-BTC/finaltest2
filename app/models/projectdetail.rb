class Projectdetail < ActiveRecord::Base
validates :proj_desc, presence: true
validates :biling_type, presence: true
validates :proj_name, presence: true, length: { maximum: 50 }

belongs_to :organization

def self.search(search,status,organization_id)
  if (search || status || organization_id)
    find(:all, :conditions => ['proj_name = ? OR status = ? OR organization_id = ?',search,status,organization_id])
  else
    find(:all)
  end
end
#def self.search(search,status,client)
#  if (search || status || client)
#    find(:all, :conditions => ['name LIKE ? OR status LIKE ? OR client_id LIKE ?',search,status,client])
 # else
#    find(:all)
 # end
#end
#def projectdetails
#	@projectdetails ||= find_projectdetails
#end
#.where("proj_name LIKE ? OR status LIKE ?", "#{params[:search]}%", "#{params[:search]}%")
#projectdetails = Projectdetail.where("proj_name LIKE ?", "%#{search}%") 
#projectdetails = Projectdetail.where(status_id: status_id) 
#projectdetails = Projectdetail.where(org_id: org_id) 

end