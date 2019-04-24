require "rails_helper"

RSpec.describe Cook do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:cuisine) }
  it { should validate_presence_of(:city) }
end