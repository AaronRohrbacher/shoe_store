require('spec_helper')

describe(Store) do
  it { should have_many(:brands) }
end
describe('validation') do
  it('requires users to enter a store name') do
    store = Store.new(store: '')
    store.save
    expect(Store.all).to eq([])
  end
  it('Saves stores to the database capitalized') do
    store = Store.new(store: 'nike')
    store.save
    expect(Store.all[0].store).to eq('Nike')
  end
  it('will not duplicate a store name') do
    store = Store.new(store: 'nike')
    store.save
    new_store = Store.new(store: 'nike')
    new_store.save
    expect(Store.all.length).to eq(1)
  end
end
