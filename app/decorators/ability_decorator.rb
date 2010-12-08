class SpreeFileStoreAbilityDecorator
  include CanCan::Ability

  def initialize(user)
    can :read, UploadedFile
    can :index, UploadedFile
    can :create, UploadedFile
  end
end