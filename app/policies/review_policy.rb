class ReviewPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end


  def update?
    true
  end

  def destroy?
    true
  end

  def new?
    true
  end

  def show?
    true
  end

  def create?
    return true
  end
end
