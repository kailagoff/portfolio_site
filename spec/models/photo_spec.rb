require 'rails_helper'

describe Photo do
  it { should validate_presence_of :photo_name }
  it { should validate_presence_of :photo_description }
end
