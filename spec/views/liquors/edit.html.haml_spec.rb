require 'rails_helper'

RSpec.describe "liquors/edit", :type => :view do
  before(:each) do
    @liquor = assign(:liquor, Liquor.create!(
      :name => "MyString",
      :name_kana => "MyString",
      :brewery_id => "MyString",
      :brand_id => "MyString",
      :category_id => "MyString",
      :updated_seq => 1,
      :updated_by => "MyString",
      :updated_at => "MyString"
    ))
  end

  it "renders the edit liquor form" do
    render

    assert_select "form[action=?][method=?]", liquor_path(@liquor), "post" do

      assert_select "input#liquor_name[name=?]", "liquor[name]"

      assert_select "input#liquor_name_kana[name=?]", "liquor[name_kana]"

      assert_select "input#liquor_brewery_id[name=?]", "liquor[brewery_id]"

      assert_select "input#liquor_brand_id[name=?]", "liquor[brand_id]"

      assert_select "input#liquor_category_id[name=?]", "liquor[category_id]"

      assert_select "input#liquor_updated_seq[name=?]", "liquor[updated_seq]"

      assert_select "input#liquor_updated_by[name=?]", "liquor[updated_by]"

      assert_select "input#liquor_updated_at[name=?]", "liquor[updated_at]"
    end
  end
end
