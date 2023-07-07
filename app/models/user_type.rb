class UserType < ApplicationRecord
  self.table_name = 'user_type'
  self.inheritance_column = :_type_disabled
end
