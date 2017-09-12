class Ability
  include CanCan::Ability

  def initialize(user)



    # Define abilities for the passed in user here. For example:
    #
      user ||= User.new # guest user (not logged in)

    case user.id # a_variable is the variable we want to compare
    when 5 #jaime
          can :manage, :all

    when 7,8 #   ,hector,roy
          can :read, ActiveAdmin::Page, :name =>"Dashboard"

          can [:create,:read,:update,:destroy],  [Activity,Detail,Employee,Family,
             Formula, Item, List, Product, Supplier, Student, Experience]


    else
          can :read, ActiveAdmin::Page, :name =>"Dashboard"

          can [:read], Item
          can [:create,:read,:update,:destroy],  Detail
    end
    #   if user.admin?
    #     can :manage, :all
    #   else
    #     can :read, :all
    #   end
    #
    # The first argument to `can` is the action you are giving the user
    # permission to do.
    # If you pass :manage it will apply to every action. Other common actions
    # here are :read, :create, :update and :destroy.
    #
    # The second argument is the resource the user can perform the action on.
    # If you pass :all it will apply to every resource. Otherwise pass a Ruby
    # class of the resource.
    #
    # The third argument is an optional hash of conditions to further filter the
    # objects.
    # For example, here the user can only update published articles.
    #
    #   can :update, Article, :published => true
    #
    # See the wiki for details:
    # https://github.com/CanCanCommunity/cancancan/wiki/Defining-Abilities
  end
end
