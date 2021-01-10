require 'rails_helper'

describe "click on the login button process" do
  it "clicks the login button" do
    visit '/'
    click_on "Login"
    expect(page).to have_content "Email"
  end

  it "gives error message when no login details are provided" do
    visit '/'
    click_on "Login"
    fill_in "Email", :with => ""
    fill_in "Password", :with => ""
    click_on "Log in"
    expect(page).to have_content "problem logging you in"
  end

  it "tests a successful login" do
    visit '/log-in'
    user = User.create({email: 'k@k.com', password: '123'})
    fill_in "Email", :with => "k@k.com"
    fill_in "Password", :with => "123"
    click_on "Log in"
    expect(page).to have_content "logged in"
  end
end
