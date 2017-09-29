require('spec_helper')
describe(Brand) do
  it { should have_many(:stores) }
end

describe(Brand) do
  it { should have_many(:shoes) }
end
