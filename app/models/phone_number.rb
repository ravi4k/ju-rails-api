class PhoneNumber < ApplicationRecord
  self.table_name = 'phone_number'

  belongs_to :user
end
