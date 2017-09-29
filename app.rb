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
  erb(:store_edit)
end

post('/store/:id') do
  @store = Store.find(params['id'])
  @store.update(store: params['store'])
  erb(:store_edit)
end

delete('/store/:id') do
  @store = Store.find(params['id'])
  @store.destroy()
  redirect('/')
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
  @brand_stores = @brand.stores
  erb(:brand_edit)
end
