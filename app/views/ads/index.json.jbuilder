json.array!(@ads) do |ad|
  json.extract! ad, :id, :title, :description, :image_url, :image_carousel_url, :important
  json.url ad_url(ad, format: :json)
end
