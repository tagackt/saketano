require 'rails_helper'

RSpec.describe "users/show", :type => :view do
  before(:each) do
    @user = assign(:user, User.create!(
      :name => "Name",
      :sex => "Sex",
      :birthday => "Birthday",
      :birth_prefecture_id => "Birth Prefecture",
      :current_prefecture_id => "Current Prefecture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Sex/)
    expect(rendered).to match(/Birthday/)
    expect(rendered).to match(/Birth Prefecture/)
    expect(rendered).to match(/Current Prefecture/)
  end
end
