require 'csv'

CSV.foreach('db/seeds-data/prefectures.csv') do |row|
  Prefecture.create!(id: row[1], name: row[0])
end

Category.create!(name: "日本酒")
Category.create!(name: "焼酎")

CSV.foreach('db/seeds-data/breweries.csv') do |row|
  Brewery.create!(id: row[0], name: row[1], name_kana: row[2], postal_code: row[3], prefecture_id: row[4], address: row[5], homepage: row[6], latitude: row[7], longitude: row[8], registerd: row[9] )
end

CSV.foreach('db/seeds-data/brands.csv') do |row|
  Brand.create!(name: row[0], name_kana: row[1],brewery_id: row[2] )
end

CSV.foreach('db/seeds-data/liquors.csv') do |row|
  Liquor.create!(id: row[0], name: row[1].to_s + ' ' + row[3].to_s + ' ' + row[4].to_s , name_kana: row[2],  category_id: row[6], brewery_id: row[5],brand_id: row[10], brand_name: row[1])
end
