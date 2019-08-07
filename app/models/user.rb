class User < ApplicationRecord
  devise :database_authenticatable, :registerable, :validatable
  has_many :tasks, dependent: :destroy
  has_many :matching_tasks, dependent: :destroy
end
