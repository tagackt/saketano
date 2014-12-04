require 'rails_helper'

RSpec.describe "impressions/index", :type => :view do
  before(:each) do
    assign(:impressions, [
      Impression.create!(
        :brewery_id => "Brewery",
        :brand_id => "Brand",
        :liquor_id => "Liquor",
        :user_id => "User",
        :total_score => 1,
        :note => "MyText",
        :updated_seq => 2,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      ),
      Impression.create!(
        :brewery_id => "Brewery",
        :brand_id => "Brand",
        :liquor_id => "Liquor",
        :user_id => "User",
        :total_score => 1,
        :note => "MyText",
        :updated_seq => 2,
        :updated_by => "Updated By",
        :updated_at => "Updated At"
      )
    ])
  end

  it "renders a list of impressions" do
    render
    assert_select "tr>td", :text => "Brewery".to_s, :count => 2
    assert_select "tr>td", :text => "Brand".to_s, :count => 2
    assert_select "tr>td", :text => "Liquor".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Updated By".to_s, :count => 2
    assert_select "tr>td", :text => "Updated At".to_s, :count => 2
  end
end
