helpers do 
  def render_hidden_tags_if_needed(editing?)
    if editing?
      "<input type='hidden' name='_method' value='put' /><input type='hidden' name='id' value='#{current_user.id}' />"
    else
    ""
    end
  end

  def current_user
    if session[:user_id] 
      User.where(id: session[:user_id]).first
  end  
  
end