module DefaultPageContent
	extend ActiveSupport::Concern

	included do
		before_action :set_page_defaults
	end

	def set_page_defaults
		@page_title 	= "Portfolio website | Jochum de Bueger"
		@seo_description = "Jochum de Bueger a Rails Developer Portfolio "
	end
end