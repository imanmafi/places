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

  describe(".all") do
    it("start empty") do
      expect(Place.all()).to(eq([]))
    end
  end

  describe("#save") do
    it("saves the place in the array of places") do
      test_location = Place.new("New York")
      test_location.save()
      expect(Place.all()).to(eq([test_location]))
    end
  end
