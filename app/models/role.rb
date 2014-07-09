class Role < ActiveRecord::Base
ADMIN = 'admin'
LEADER = 'leader'

validates_presence_of :name

has_many :user_roles
has_many :users, through: :user_roles

scope :admin, where(alias: ADMIN)
scope :leader, where(alias: LEADER)

	class << self
		def admin
			admin.first if admin
		end

		def leader
			leader.first if leader
		end
	end
end
