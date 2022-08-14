class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
  end

  private

  # def role_params
  #   params.permit(:role)
  # end
end
