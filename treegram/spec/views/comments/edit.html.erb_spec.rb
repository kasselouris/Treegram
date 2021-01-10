require 'rails_helper'

RSpec.describe "comments/edit", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      :user_id => 1,
      :photo_id => 1,
      :comment_text => "MyText"
    ))
  end

  it "renders the edit comment form" do
    render

    assert_select "form[action=?][method=?]", comment_path(@comment), "post" do

      assert_select "input#comment_user_id[name=?]", "comment[user_id]"

      assert_select "input#comment_photo_id[name=?]", "comment[photo_id]"

      assert_select "textarea#comment_comment_text[name=?]", "comment[comment_text]"
    end
  end
end
