module ApplicationHelper
	def sort_class(sort_column)
		params[:sort] == sort_column ? "hilite" : ""
	end
end
