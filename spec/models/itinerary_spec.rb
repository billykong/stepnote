require 'rails_helper'

RSpec.describe Itinerary, type: :model do
  subject { create(:itinerary) }

  describe "When creating" do
    it "events_id is initialised" do
      expect(subject.events_id).to_not be nil
    end
  end
end
