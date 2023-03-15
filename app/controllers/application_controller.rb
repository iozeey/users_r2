class ApplicationController < ActionController::Base
    include Pagy::Backend

    def per_page
        return 10 unless params[:per_page].present?

        per_page_value = Integer(params[:per_page], 10)
        per_page_value > 100 ? 100 : per_page_value
    end
end
