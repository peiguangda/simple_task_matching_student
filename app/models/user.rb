class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  has_many :tasks
  has_many :matching_tasks
end
