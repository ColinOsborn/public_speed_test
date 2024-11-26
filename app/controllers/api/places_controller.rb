module API
  class PlacesController

    def index
      places = Place.all.map do |place|
        {
          name: place.name,
          city: place.city,

        }
      end
    end

    private

    # These are just here temporarily until
    # I find the correct class to store them
    # it presenter/decorartor etc
    def avg_download_speed(place)
      (place % 2)
    end

    def download_speed_units

    end
  end
end
