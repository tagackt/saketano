require 'rails_helper'

RSpec.describe "impressions/edit", :type => :view do
  before(:each) do
    @impression = assign(:impression, Impression.create!(
      :brewery_id => "MyString",
      :brand_id => "MyString",
      :liquor_id => "MyString",
      :user_id => "MyString",
      :total_score => 1,
      :note => "MyText",
      :updated_seq => 1,
      :updated_by => "MyString",
      :updated_at => "MyString"
    ))
  end

  it "renders the edit impression form" do
    render

    assert_select "form[action=?][method=?]", impression_path(@impression), "post" do

      assert_select "input#impression_brewery_id[name=?]", "impression[brewery_id]"

      assert_select "input#impression_brand_id[name=?]", "impression[brand_id]"

      assert_select "input#impression_liquor_id[name=?]", "impression[liquor_id]"

      assert_select "input#impression_user_id[name=?]", "impression[user_id]"

      assert_select "input#impression_total_score[name=?]", "impression[total_score]"

      assert_select "textarea#impression_note[name=?]", "impression[note]"

      assert_select "input#impression_updated_seq[name=?]", "impression[updated_seq]"

      assert_select "input#impression_updated_by[name=?]", "impression[updated_by]"

      assert_select "input#impression_updated_at[name=?]", "impression[updated_at]"
    end
  end
end
