class ApplicationController < ActionController::Base
  layout "application"
  rescue_from ActiveRecord::RecordNotFound do |exception|
     no_record_url
  end

  def no_record_url
    render "/not_found"
  end


end
