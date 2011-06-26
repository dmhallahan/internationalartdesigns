module ApplicationHelper

def is_current_page?(page_name)
  unless params[:path].nil? 
	"highlight" if params[:path].include? page_name 
  end
end

def is_current_controller?(controller_name)
  params[:path].include? controller_name unless params[:path].nil? 
end

end
