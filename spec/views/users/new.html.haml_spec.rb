require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :name => "MyString",
      :sex => "MyString",
      :birthday => "MyString",
      :birth_prefecture_id => "MyString",
      :current_prefecture_id => "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_name[name=?]", "user[name]"

      assert_select "input#user_sex[name=?]", "user[sex]"

      assert_select "input#user_birthday[name=?]", "user[birthday]"

      assert_select "input#user_birth_prefecture_id[name=?]", "user[birth_prefecture_id]"

      assert_select "input#user_current_prefecture_id[name=?]", "user[current_prefecture_id]"
    end
  end
end
