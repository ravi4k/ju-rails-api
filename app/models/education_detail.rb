class EducationDetail < ApplicationRecord
  self.table_name = 'education_details'

  belongs_to :user
end
