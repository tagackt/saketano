require 'rails_helper'

RSpec.describe "breweries/index", :type => :view do
  before(:each) do
    assign(:breweries, [
      Brewery.create!(
        :name => "Name",
        :name_kana => "Name Kana",
        :postal_code => "Postal Code",
        :prefecture_id => "Prefecture",
        :address => "Address",
        :homepage => "Homepage",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :registerd => false,
        :updated_seq => 1,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      ),
      Brewery.create!(
        :name => "Name",
        :name_kana => "Name Kana",
        :postal_code => "Postal Code",
        :prefecture_id => "Prefecture",
        :address => "Address",
        :homepage => "Homepage",
        :latitude => "Latitude",
        :longitude => "Longitude",
        :registerd => false,
        :updated_seq => 1,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      )
    ])
  end

  it "renders a list of breweries" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Postal Code".to_s, :count => 2
    assert_select "tr>td", :text => "Prefecture".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage".to_s, :count => 2
    assert_select "tr>td", :text => "Latitude".to_s, :count => 2
    assert_select "tr>td", :text => "Longitude".to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Updated By".to_s, :count => 2
    assert_select "tr>td", :text => "Updated At".to_s, :count => 2
  end
end
