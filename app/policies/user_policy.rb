class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def dashboard_booked?
    true
  end

  def dashboard_posts?
    true
  end
end
