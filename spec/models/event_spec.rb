require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:itinerary) { create(:itinerary) }
  subject { create(:event, itinerary: itinerary) }

  describe "When creating" do
    it "add itself to the itinerary's events_id when created" do
      event = create(:event, itinerary: itinerary)
      expect(itinerary.events_id.last).to eq event.id
    end
  end

  describe "When destroying" do
    before do
      subject
    end

    it "remove itself from the itinerary's events_id when destroyed" do
      subject_id = subject.id
      subject.destroy
      expect(itinerary.events_id).to_not include subject_id
    end
  end

end
