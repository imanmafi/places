require('rspec')
require('places')

  describe(Place) do
    describe("#place") do
    it("lets you name the place") do
      test_location = Place.new("New York")
      expect(test_location.place()).to(eq("New York"))
      end
    end
  end
