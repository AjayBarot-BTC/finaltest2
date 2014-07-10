class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  has_many :projectdetails
  has_many :organizations
  has_many :user_roles
  has_many :roles, through: :user_roles
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, authentication_keys: [:email]

  validates_format_of       :email, with: Devise.email_regexp, allow_blank: true, :if => :email_changed?
  validates_presence_of     :password, on: :create
  validates_confirmation_of :password, :on=>:create

  def is?(role)
  	roles.find_by_alias(role.to_s).present?
  end

  def is_admin?
  	have_role?(Role::ADMIN)
  end

  def is_leader?
  	have_role?(Role::LEADER)
  end

  def have_role?(role_type)
    roles.pluck(:alias).include? role_type if roles
  end
end
