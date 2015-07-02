require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  use 'from app 1'

  get '/', to: 'home#index'
end

class AppTwo < Pine::App
  use 'from app 2'

  get '/', to: 'home#index'
end
