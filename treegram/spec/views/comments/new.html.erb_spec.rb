require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :user_id => 1,
      :photo_id => 1,
      :comment_text => "MyText"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_photo_id[name=?]", "comment[photo_id]"

      assert_select "textarea#comment_comment_text[name=?]", "comment[comment_text]"
    end
  end
end
