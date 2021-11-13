class QuoteSerializer
  include JSONAPI::Serializer
  attributes :body, :section_num, :book_num, :translator_name
end
