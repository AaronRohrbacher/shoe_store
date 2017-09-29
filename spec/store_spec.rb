require('spec_helper')

describe(Store) do
  it { should have_many(:brands) }
end

describe(Brand) do
  it { should have_many(:shoes) }
end
