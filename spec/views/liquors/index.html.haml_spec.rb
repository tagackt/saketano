require 'rails_helper'

RSpec.describe "liquors/index", :type => :view do
  before(:each) do
    assign(:liquors, [
      Liquor.create!(
        :name => "Name",
        :name_kana => "Name Kana",
        :brewery_id => "Brewery",
        :brand_id => "Brand",
        :category_id => "Category",
        :updated_seq => 1,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      ),
      Liquor.create!(
        :name => "Name",
        :name_kana => "Name Kana",
        :brewery_id => "Brewery",
        :brand_id => "Brand",
        :category_id => "Category",
        :updated_seq => 1,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      )
    ])
  end

  it "renders a list of liquors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Name Kana".to_s, :count => 2
    assert_select "tr>td", :text => "Brewery".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Category".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Updated By".to_s, :count => 2
    assert_select "tr>td", :text => "Updated At".to_s, :count => 2
  end
end
