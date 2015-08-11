class AdminController < ApplicationController
   before_action :signed_in_user, only: [:links]

  def links
  end
end
