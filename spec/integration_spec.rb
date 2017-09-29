require('spec_helper')

describe 'the store creation path', {:type => :feature} do
  it 'allows a user to create a new store and capitalizes the store name' do
    visit '/'
    click_link('Stores')
    fill_in('store', :with => 'nike')
    click_button('Open a new Ekin Store!')
    expect(page).to have_content('Nike')
  end

  it 'allows a user to create a brand and capitalizes the brand name' do
    visit '/'
    click_link('Brands')
    fill_in('brand', :with => 'nike store')
    fill_in('price', :with => '3')
    click_button('Start a new Ekin brand!')
    expect(page).to have_content('Nike Store')
  end

  it 'displays stores on associated brand page' do
    visit '/'
    click_link('Stores')
    fill_in('store', :with => 'nike store')
    click_button('Open a new Ekin Store!')
    click_link('Nike Store')
    visit '/brand'
    fill_in('brand', :with => 'Ekin nonelite')
    fill_in('price', :with => '3')
    click_button('Start a new Ekin brand!')
    visit('/store')
    click_link('Nike Store')
    page.select 'Ekin Nonelite', :from => 'brand_id'
    click_button('Add brand for Nike Store')
    visit '/brand'
    click_link('Ekin Nonelite')
    expect(page).to have_content ('Nike Store')
  end

  it 'displays brands on associated store page' do
    visit '/'
    click_link('Stores')
    fill_in('store', :with => 'nike store')
    click_button('Open a new Ekin Store!')
    click_link('Nike Store')
    visit '/brand'
    fill_in('brand', :with => 'Ekin nonelite')
    fill_in('price', :with => '3')
    click_button('Start a new Ekin brand!')
    visit('/store')
    click_link('Nike Store')
    page.select 'Ekin Nonelite', :from => 'brand_id'
    click_button('Add brand for Nike Store')
    visit '/store'
    click_link('Nike Store')
    expect(page).to have_content ('Ekin Nonelite | $3.00')
  end
end
