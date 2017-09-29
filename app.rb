require('bundler/setup')
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  erb(:index)
end

get('/store') do
  @stores = Store.all
  erb(:store)
end

post('/store') do
  Store.create(store: params['store'])
  @stores = Store.all
  erb(:store)
end

get('/store/:id') do
  @store = Store.find(params['id'])

  @store_brands = @store.brands
  @brands = Brand.all
  erb(:store_edit)
end

post('/store/:id') do
  @store = Store.find(params['id'])
  @store.update(store: params['store'])

  @store_brands = @store.brands
  @brands = Brand.all
  erb(:store_edit)
end

delete('/store/:id') do
  @store = Store.find(params['id'])
  @store.destroy()
  redirect('/')
end

patch('/store/:id') do
  @store = Store.find(params['id'])
  @store.brands.push(Brand.find(params['brand_id']))

  @store_brands = @store.brands
  @stores = Store.all
  id = params['id']
  redirect('/store/' + params['id'])
end

get('/brand') do
  @brands = Brand.all
  erb(:brand)
end

post('/brand') do
  Brand.create(brand: params['brand'], price: params['price'])
  @brands = Brand.all
  erb(:brand)
end

get('/brand/:id') do
  @brand = Brand.find(params['id'])
  @stores = Store.all
  @brand_stores = @brand.stores
  erb(:brand_edit)
end

post('/brand/:id') do
  @brand = Brand.find(params['id'])
  @brand.stores.push(Store.find(params['store_id']))
  @brand_stores = @brand.stores
  @stores = Store.all
  erb(:brand_edit)
end
