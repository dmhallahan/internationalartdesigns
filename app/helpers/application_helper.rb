module ApplicationHelper

def is_current_page?(page_name)
  unless params[:path].nil? 
	"highlight" if params[:path].include? page_name 
  end
end

def is_current_controller?(controller_name)
  unless params[:path].nil? 
     "highlight" if params[:path].include? controller_name
  end
end

def is_referer?(referer_page)
   "highlight" if request.referer.include? referer_page
end

def is_collection_page?
 "highlight" if is_current_controller?("collection") or is_current_page?("detail")
end

end
