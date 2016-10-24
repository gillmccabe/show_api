class ShowsController < ApplicationController
  def index
    @shows = Show.all
    render :json => @shows
  end


  #post api/animals/1
  def create
    show = Show.create( show_params )
    render :json => show
  end


  private
  def show_params
    params.require(:show).permit([:name, :series, :description, :image, :programmeID])
  end
end