class Public::BaseController < ApplicationController
  add_flash_types :success, :info, :warning, :danger
  layout 'public'

  before_action :authenticate_user!
end
