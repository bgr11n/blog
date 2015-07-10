require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/', to: 'home#index'

  namespace 'user' do
    get '/me', to: 'user#me'
  end
end
