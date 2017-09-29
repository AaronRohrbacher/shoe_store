require('spec_helper')
describe(Shoe) do
  it { should have_many(:brands) }
end

describe(Shoe) do
  it { should have_many(:stores) }
end
