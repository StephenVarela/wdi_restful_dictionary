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
    entry = Entry.new
    entry.word = params[:entry][:word]
    entry.language = params[:entry][:language]
    entry.definition = params[:entry][:definition]

    if entry.save #save to database
      redirect_to entries_url
    else
      render :new
    end

  end

  def edit
    @entry = Entry.find(params[:id])
  end

  def update

    entry = Entry.find_by(:id => params[:id])
    entry.word = params[:entry][:word]
    entry.language = params[:entry][:language]
    entry.definition = params[:entry][:definition]

    entry.save

    redirect_to entry_url(params[:id])
  end

  def destroy
    entry = Entry.find_by(:id => params[:id])
    entry.destroy
    redirect_to entries_url
  end

end
