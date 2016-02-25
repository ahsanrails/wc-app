json.array!(@pdetails) do |pdetail|
  json.extract! pdetail, :id, :ad_type, :property_name, :property_type, :location, :city, :area, :rent, :bathroom, :bedroom, :size, :price, :owner_name, :property_status, :add_date
  json.url pdetail_url(pdetail, format: :json)
end
