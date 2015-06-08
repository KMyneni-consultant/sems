class Task < ActiveRecord::Base

	self.primary_key = :tid
	self.table_name = :task
end
