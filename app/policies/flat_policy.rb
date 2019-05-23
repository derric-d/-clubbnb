class FlatPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index
    true
  end


  def new?
    true
  end

  def edit?
    record.user == user
  end

  def show?
    true
  end
  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def create?
    return true
  end
end
