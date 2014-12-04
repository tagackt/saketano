require 'rails_helper'

RSpec.describe "brands/show", :type => :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :name => "Name",
      :name_kana => "Name Kana",
      :brewery_id => "Brewery",
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
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Updated By/)
    expect(rendered).to match(/Updated At/)
  end
end
