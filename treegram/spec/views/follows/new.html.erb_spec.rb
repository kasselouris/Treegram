require 'rails_helper'

RSpec.describe "follows/new", type: :view do
  before(:each) do
    assign(:follow, Follow.new(
      :follower_id => 1,
      :followed_id => 1
    ))
  end

  it "renders new follow form" do
    render

    assert_select "form[action=?][method=?]", follows_path, "post" do

      assert_select "input#follow_follower_id[name=?]", "follow[follower_id]"

      assert_select "input#follow_followed_id[name=?]", "follow[followed_id]"
    end
  end
end
