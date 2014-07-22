module ApplicationHelper
  def menu_status(item)
    if params[:id] == item
      @menu_status = 'active'
    else
      if request.path_parameters[:controller] == item
        @menu_status = 'active'
      else
        @menu_status = 'inactive'
      end
    end
  end
end
