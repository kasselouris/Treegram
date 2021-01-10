require 'rails_helper'

describe "Test the sign-up process" do
  it "tests sign-up button" do
    visit '/'
    click_on 'Sign Up'
    expect(page).to have_content "Password confirmation"
  end

  it "submits a new user" do
    visit '/users/new'
    fill_in "Email", :with => "k@k.com"
    fill_in "Password", :with => "123"
    fill_in "Password confirmation", :with => "123"
    click_on 'Sign Up'
    expect(page).to have_content "Welcome"
  end

  it "gives error message if email does not have a @ and ." do
    visit '/users/new'
    fill_in "Email", :with => "k@k"
    fill_in "Password", :with => "123"
    fill_in "Password confirmation", :with => "123"
    click_on 'Sign Up'
    expect(page).to have_content "Input a properly formatted"
  end

  it "gives error message if email does not have a @ and ." do
    visit '/users/new'
    fill_in "Email", :with => "k#k.com"
    fill_in "Password", :with => "123"
    fill_in "Password confirmation", :with => "123"
    click_on 'Sign Up'
    expect(page).to have_content "Input a properly formatted"
  end

  it "gives error message if password confirmation is different from password" do
    visit '/users/new'
    fill_in "Email", :with => "k@k.com"
    fill_in "Password", :with => "123"
    fill_in "Password confirmation", :with => "1234"
    click_on 'Sign Up'
    expect(page).to have_content "was a problem"
  end

  it "gives error message if email is not unique" do
    visit '/users/new'
    User.create({email: "k@k.com", password: "123"})
    fill_in "Email", :with => "k@k.com"
    fill_in "Password", :with => "1234"
    fill_in "Password confirmation", :with => "1234"
    click_on 'Sign Up'
    expect(page).to have_content "That email"
  end

end
