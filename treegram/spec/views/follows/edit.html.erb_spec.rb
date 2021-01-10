require 'rails_helper'

RSpec.describe "follows/edit", type: :view do
  before(:each) do
    @follow = assign(:follow, Follow.create!(
      :follower_id => 1,
      :followed_id => 1
    ))
  end

  it "renders the edit follow form" do
    render

    assert_select "form[action=?][method=?]", follow_path(@follow), "post" do

      assert_select "input#follow_follower_id[name=?]", "follow[follower_id]"

      assert_select "input#follow_followed_id[name=?]", "follow[followed_id]"
    end
  end
end
