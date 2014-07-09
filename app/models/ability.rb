class Ability
  include CanCan::Ability

  def initialize(user)
    if user.is? Role::ADMIN
      can :manage, [Projectdetail, Organization]
    end
    if user.is? Role::LEADER
      can :read, Projectdetail
    end
  end
end
