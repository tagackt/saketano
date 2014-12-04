require 'rails_helper'

RSpec.describe "users/index", :type => :view do
  before(:each) do
    assign(:users, [
      User.create!(
        :name => "Name",
        :sex => "Sex",
        :birthday => "Birthday",
        :birth_prefecture_id => "Birth Prefecture",
        :current_prefecture_id => "Current Prefecture"
      ),
      User.create!(
        :name => "Name",
        :sex => "Sex",
        :birthday => "Birthday",
        :birth_prefecture_id => "Birth Prefecture",
        :current_prefecture_id => "Current Prefecture"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Sex".to_s, :count => 2
    assert_select "tr>td", :text => "Birthday".to_s, :count => 2
    assert_select "tr>td", :text => "Birth Prefecture".to_s, :count => 2
    assert_select "tr>td", :text => "Current Prefecture".to_s, :count => 2
  end
end
