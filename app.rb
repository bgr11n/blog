require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/hello/:name', to: 'hello#index'
  get '/', to: 'home#index'

  # namespace 'user' do
  #   get '/user', to: 'user#me'
  # end
end
