require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/', to: 'hello#index'
  get '/hello/:name', to: [200, {}, ['Meow!']]

  # namespace 'user' do
  #   get '/me', to: 'user#me'
  # end
end
