class User < ApplicationRecord
  self.table_name = 'user_profile'

  include Md5Password
  set_password_field :password

  belongs_to :college
  belongs_to :user_type, foreign_key: :user_type

  has_one :student

  has_many :addresses
  has_many :education_details
  has_many :phone_numbers
end
