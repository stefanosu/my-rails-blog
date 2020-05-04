class ApplicationController < ActionController::Base
  before_action :underscore_params!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :null_session
  respond_to :json



def underscore_params! 
  params.deep_transform_keys!(&:underscore)
end


end
