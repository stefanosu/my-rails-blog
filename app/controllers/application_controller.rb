class ApplicationController < ActionController::Base
  before_action :underscore_params!
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery  respond_to :json,  with: :null_session



def underscore_params! 
  params.deep_transform_keys!(&_underscore)
end


end
