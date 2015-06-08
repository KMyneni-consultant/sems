class Permission < ActiveRecord::Base

	self.primary_key = :perm_id
	self.table_name = :permission
end
