class Users::GetFollowerWithFilterService < ApplicationService
  def initialize(user, type = 'followers')
    @user = user
    @type = type
  end

  def call
    @user
  rescue Exception
    ServiceResponse.new(errors: [{title: 'Something wrong!', detail: 'Cannot Update Sustainability Profile'}])
  end
end
