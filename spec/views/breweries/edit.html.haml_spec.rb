require 'rails_helper'

RSpec.describe "breweries/edit", :type => :view do
  before(:each) do
    @brewery = assign(:brewery, Brewery.create!(
      :name => "MyString",
      :name_kana => "MyString",
      :postal_code => "MyString",
      :prefecture_id => "MyString",
      :address => "MyString",
      :homepage => "MyString",
      :latitude => "MyString",
      :longitude => "MyString",
      :registerd => false,
      :updated_seq => 1,
      :updated_by => "MyString",
      :updated_at => "MyString"
    ))
  end

  it "renders the edit brewery form" do
    render

    assert_select "form[action=?][method=?]", brewery_path(@brewery), "post" do

      assert_select "input#brewery_name[name=?]", "brewery[name]"

      assert_select "input#brewery_name_kana[name=?]", "brewery[name_kana]"

      assert_select "input#brewery_postal_code[name=?]", "brewery[postal_code]"

      assert_select "input#brewery_prefecture_id[name=?]", "brewery[prefecture_id]"

      assert_select "input#brewery_address[name=?]", "brewery[address]"

      assert_select "input#brewery_homepage[name=?]", "brewery[homepage]"

      assert_select "input#brewery_latitude[name=?]", "brewery[latitude]"

      assert_select "input#brewery_longitude[name=?]", "brewery[longitude]"

      assert_select "input#brewery_registerd[name=?]", "brewery[registerd]"

      assert_select "input#brewery_updated_seq[name=?]", "brewery[updated_seq]"

      assert_select "input#brewery_updated_by[name=?]", "brewery[updated_by]"

      assert_select "input#brewery_updated_at[name=?]", "brewery[updated_at]"
    end
  end
end
