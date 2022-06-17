class Users::FollowService < ApplicationService
  def initialize(user, other_user)
    @user = user
    @other_user = other_user
  end

  def call
    if(@user.id != @other_user.id)
      Follow.create!(follower_id: @user.id, following_id: @other_user.id)
    end
  rescue Exception
    ServiceResponse.new(errors: [{title: 'Something wrong!', detail: 'Cannot Update Sustainability Profile'}])
  end
end
