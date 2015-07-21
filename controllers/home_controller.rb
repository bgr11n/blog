class HomeController < Pine::Controller
  before_action :asd

  def index
    a
  end

  def asd
    puts 'form asd BEFORE action'
  end
end
