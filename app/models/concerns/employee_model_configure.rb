module EmployeeModelConfigure
  extend ActiveSupport::Concern

  included do
    self.table_name = 'employees'

  end
end
