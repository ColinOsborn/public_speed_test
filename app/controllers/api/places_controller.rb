module API
  class PlacesController

    def index
      @places = Place.all
    end
  end
end
