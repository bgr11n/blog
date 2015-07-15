class HomeController < Pine::Controller::Base
  def index
    params.inspect
  end
end
