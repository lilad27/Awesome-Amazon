json.array!(@books) do |book|
  json.extract! book, :id, :title, :description, :category_id
  json.url book_url(book, format: :json)
end
