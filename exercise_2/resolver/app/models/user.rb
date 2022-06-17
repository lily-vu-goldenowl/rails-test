# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  email      :string
#  user_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class User < ApplicationRecord
  has_many :followed_users, foreign_key: :follower_id, class_name: 'Follow'
  has_many :followings, through: :followed_users
  has_many :following_users, foreign_key: :following_id, class_name: 'Follow'
  has_many :followers, through: :following_users
end
