require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  use 'from app'

  get '/', to: 'home#index'
end
