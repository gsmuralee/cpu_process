class ApplicationController < ActionController::Base
  protect_from_forgery
  require ‘/lib/api.rb’
end
