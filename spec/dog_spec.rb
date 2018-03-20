require "rspec"
require_relative "../models/dog.rb"

describe Dog do
  subject(:dog) do
    dog = Dog.new("Rover", 10)
  end

  describe "attributes of a dog" do
    it "has the class Dog" do
      expect(dog.class.to_s).to eq("Dog")
    end
    it "has a String for a name" do
      expect(dog.name.to_s).to eq("Rover")
    end
    it "has an Integer for hunger level" do
      expect(dog.hunger_level).to be_a(Integer)
    end
  end

  describe "#set_hunger_level" do
    context "when new hunger level" do
      context "is less than zero" do
        it "set the hunger level to zero" do
          dog.set_hunger_level(-1)
          expect(dog.hunger_level).to eq(0)
        end
      end
      context "is greater than zero" do
        it "set the hunger level to the new hunger level" do
          dog.set_hunger_level(5)
          expect(dog.hunger_level).to eq(5)
        end
      end
    end
  end
end
