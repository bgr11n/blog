class UserController < Pine::Controller::Base
  def me
    params.inspect
  end
end
