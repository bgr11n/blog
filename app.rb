require 'pine'
require 'json'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/', to: 'home#index'
  get '/hello/:name', to: 'hello#index'

  namespace 'user' do
    get '/me', to: 'user#me'
    namespace 'user' do
      get '/me', to: 'user#me'
    end
  end
end
