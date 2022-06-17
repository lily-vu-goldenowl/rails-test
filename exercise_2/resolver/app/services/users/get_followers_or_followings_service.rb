class Users::GetFollowersOrFollowingsService < ApplicationService
  def initialize(user, type = 'followers')
    @user = user
    @type = type
  end

  def call
    if(['followers', 'followings'].include?(@type))
      @user.send(@type)
    end
  rescue Exception
    ServiceResponse.new(errors: [{title: 'Something wrong!', detail: 'Cannot Update Sustainability Profile'}])
  end
end
