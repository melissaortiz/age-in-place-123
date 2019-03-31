class StartupController < ApplicationController
  def index
    @agencies = Agency.search(params[:term])
  end

  def show
    @agencies= Agency.all
  end
end
