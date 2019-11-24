class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index]
  skip_before_action :verify_authenticity_token

  def home
    @journal = Journal.new
  end

  def index
    @users = User.top_ten
    @not_podium = User.top_ten[3..@users.length]
  end
end
