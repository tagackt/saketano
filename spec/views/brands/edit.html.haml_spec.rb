require 'rails_helper'

RSpec.describe "brands/edit", :type => :view do
  before(:each) do
    @brand = assign(:brand, Brand.create!(
      :name => "MyString",
      :name_kana => "MyString",
      :brewery_id => "MyString",
      :updated_seq => 1,
      :updated_by => "MyString",
      :updated_at => "MyString"
    ))
  end

  it "renders the edit brand form" do
    render

    assert_select "form[action=?][method=?]", brand_path(@brand), "post" do

      assert_select "input#brand_name[name=?]", "brand[name]"

      assert_select "input#brand_name_kana[name=?]", "brand[name_kana]"

      assert_select "input#brand_brewery_id[name=?]", "brand[brewery_id]"

      assert_select "input#brand_updated_seq[name=?]", "brand[updated_seq]"

      assert_select "input#brand_updated_by[name=?]", "brand[updated_by]"

      assert_select "input#brand_updated_at[name=?]", "brand[updated_at]"
    end
  end
end
