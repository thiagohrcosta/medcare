class ApplicationController < ActionController::Base
  before_action :set_global_search_variable

  def set_global_search_variable
    @q = Doctor.search(params[:q])
  end
end
