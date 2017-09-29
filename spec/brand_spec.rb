require('spec_helper')
describe(Brand) do
  it { should have_many(:stores) }
end

describe('validation') do
  it('requires users to enter a brand name') do
    brand = Brand.new(brand: '', price: '3.00')
    brand.save
    expect(Brand.all).to eq([])
  end
  it('Saves brands to the database capitalized') do
    brand = Brand.new(brand: 'nike', price: '3.99')
    brand.save
    expect(Brand.all[0].brand).to eq('Nike')
  end
  it('will not duplicate a brand name') do
    brand = Brand.new(brand: 'nike', price: '5.00')
    brand.save
    new_brand = Brand.new(brand: 'nike', price: '4.00')
    new_brand.save
    expect(Brand.all.length).to eq(1)
  end
end
