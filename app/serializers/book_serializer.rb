class BookSerializer
  include JSONAPI::Serializer
  attributes  :title,
              :author,
              :genre,
              :summary,
              :number_sold,
              :popularity,
              :num_stores

  has_many :stores
end
