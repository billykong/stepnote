class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :content, :entity, :schedule, :lat, :lng
end
