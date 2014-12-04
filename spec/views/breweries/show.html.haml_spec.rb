require 'rails_helper'

RSpec.describe "breweries/show", :type => :view do
  before(:each) do
    @brewery = assign(:brewery, Brewery.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Name Kana/)
    expect(rendered).to match(/Postal Code/)
    expect(rendered).to match(/Prefecture/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/Homepage/)
    expect(rendered).to match(/Latitude/)
    expect(rendered).to match(/Longitude/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Updated By/)
    expect(rendered).to match(/Updated At/)
  end
end
