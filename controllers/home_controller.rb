class HomeController < Pine::Controller
  def index
    status 201
    response.headers = { 'Content-Type' => 'application/json' }
    request.request_method
  end
end
