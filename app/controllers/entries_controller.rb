class EntriesController < ApplicationController
  def index
  end

  def show
    @id = params[:id]
  end

  def new
  end

  def create
    redirect_to entries_url
  end

end
