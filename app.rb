require 'pine'

Dir[File.join(".", "controllers/*.rb")].each do |f|
  require f
end

class App < Pine::App
  use 'from app'

  get '/', to: 'home#index'
end
