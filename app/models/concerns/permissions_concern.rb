module PermissionsConcern extend ActiveSupport::Concern
  
  def is_normal_user?
    self.permission_level == 0
  end

  def is_admin?
  	if self.permission_level.nil?
  		self.permission_level = 0
  	else
      self.permission_level >= 9
    end
  end

end