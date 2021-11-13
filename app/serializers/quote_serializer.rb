class QuoteSerializer
  include JSONAPI::Serializer
  attributes :body, :section_num, :book_num, :translator_name, :work_name, :author_name
  set_key_transform :camel
end
