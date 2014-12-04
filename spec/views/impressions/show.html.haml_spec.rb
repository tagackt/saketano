require 'rails_helper'

RSpec.describe "impressions/show", :type => :view do
  before(:each) do
    @impression = assign(:impression, Impression.create!(
      :brewery_id => "Brewery",
      :brand_id => "Brand",
      :liquor_id => "Liquor",
      :user_id => "User",
      :total_score => 1,
      :note => "MyText",
      :updated_seq => 2,
      :updated_by => "Updated By",
      :updated_at => "Updated At"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Brewery/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Liquor/)
    expect(rendered).to match(/User/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Updated By/)
    expect(rendered).to match(/Updated At/)
  end
end
