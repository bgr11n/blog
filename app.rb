require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/hello/:name', to: 'hello#index'
  get '/', to: [200, {}, ['Meow!']]
  get '*', to: [200, {}, ['Meow! asd']]

  # namespace 'user' do
  #   get '/user', to: 'user#me'
  # end
end
