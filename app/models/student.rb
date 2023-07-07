class Student < ApplicationRecord
  self.table_name = 'student_info'

  belongs_to :user
end
