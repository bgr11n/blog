require 'pine'

Dir[File.join(".", "controllers/*.rb")].each { |f| require f }

class App < Pine::App
  get '/', to: 'home#index'

  namespace 'asd' do
    get '/aa', to: 'asd#asd'

    namespace 'asd2' do
      get '/aa2', to: 'asd#asd'
    end
  end
end

class AppTwo < App
  get '/', to: 'home#index2'
end
