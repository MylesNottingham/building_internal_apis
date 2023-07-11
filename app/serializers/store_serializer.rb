class StoreSerializer
  include JSONAPI::Serializer
  attributes :name

  has_many :books

  attribute :active do
    true
  end
end
