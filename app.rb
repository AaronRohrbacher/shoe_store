require('bundler/setup')
Bundler.require(:default)
require('pry')

Dir[File.dirname(__FILE__) + '/lib/*.rb'].each { |file| require file }

get('/') do
  @stores = Store.all
  erb(:index)
end

post('/') do
  Store.create(store: params['store'])
  @stores = Store.all
  erb(:index)
end

get('/store/:id') do
  @store = Store.find(params['id'])
  erb(:store)
end

post('/store/:id') do
  @store = Store.find(params['id'])
  @store.update(store: params['store'])
  erb(:store)
end

delete('/store/:id') do
  @store = Store.find(params['id'])
  @store.destroy()
  redirect('/')
end
