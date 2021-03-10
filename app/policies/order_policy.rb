class OrderPolicy < ApplicationPolicy
  def show?
    true
  end

  def new?
    user.role == 'user'
  end

  def create?
    user.role == 'user'
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end
end
