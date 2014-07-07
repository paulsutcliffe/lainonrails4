class Ability
  include CanCan::Ability

  def initialize(user)
      user ||= User.new # guest user (not logged in)
    if user.has_role? :admin
      can :manage, :all
    else
      cannot  [:index],   [Ad, Banner, Computest, Contact, Page, Subscriber]
      can     [:index],   [Article, Office, Opportunity, Product, Testimony]
      can     [:show],    [Article, Computest, Office, Opportunity, Page, Product, Testimony]
      can     [:create],  [Computest, Contact, Subscriber]
      can     :manage,    Article if user.has_role?(:blogger)
    end
  end
end
