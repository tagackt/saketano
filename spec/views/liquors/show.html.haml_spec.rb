require 'rails_helper'

RSpec.describe "liquors/show", :type => :view do
  before(:each) do
    @liquor = assign(:liquor, Liquor.create!(
      :name => "Name",
      :name_kana => "Name Kana",
      :brewery_id => "Brewery",
      :brand_id => "Brand",
      :category_id => "Category",
      :updated_seq => 1,
      :updated_by => "Updated By",
      :updated_at => "Updated At"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Name Kana/)
    expect(rendered).to match(/Brewery/)
    expect(rendered).to match(/Brand/)
    expect(rendered).to match(/Category/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Updated By/)
    expect(rendered).to match(/Updated At/)
  end
end
