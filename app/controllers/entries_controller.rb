class EntriesController < ApplicationController
  def index
    @entries = Entry.all
  end

  def show
    @entry = Entry.find_by(id: params[:id])
  end

  def new
    @entry = Entry.new
  end

  def create
    redirect_to entries_url
  end

  def edit
    @id = params[:id]
  end

  def update
    redirect_to entry_url(params[:id])
  end

  def destroy
    redirect_to entries_url
  end

end
