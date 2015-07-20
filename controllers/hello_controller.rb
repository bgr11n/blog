class HelloController < Pine::Controller
  def index
    "Hello #{params[:name]}!"
  end
end
