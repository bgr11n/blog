class HelloController < Pine::Controller::Base
  def index
    "Hello #{params[:name]}!"
  end
end
