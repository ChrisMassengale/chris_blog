module ApplicationHelper
  def authorized_editor?
    if current_user && current_user.email == 'chris.massengale@verizon.net'
      return true
    else
      return false
    end 
  end 
end
