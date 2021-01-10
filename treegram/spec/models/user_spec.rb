require 'rails_helper'

describe User do
  it {should have_many :photos}
  it {should have_many :tags}
  describe '#is_email?' do
    it ('will return true if @ and . are in email') do
      user = User.create({email: 'john@john.com', password: 'reallybadpassword'})
      user.save
      expect(user.is_email?).to eq true
    end
    it ('will return false if @ and . are not in email') do
      user = User.create({email: 'johnjohn.com', password: 'reallybadpassword'})
      expect(user.is_email?).to eq false
    end
  end

end
