require 'rails_helper'

describe Tag do
  it{ should belong_to :user}
  it{ should belong_to :photo}

end
