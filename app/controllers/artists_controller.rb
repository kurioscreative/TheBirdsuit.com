class ArtistsController < InheritedResources::Base
  actions :index, :show
  respond_to :html

  def video
    @artist = Artist.find(params[:id])
  end

end