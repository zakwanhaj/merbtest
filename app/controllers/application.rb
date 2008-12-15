class Application < Merb::Controller
  before :default_lang
  before :set_locale
  
  def default_lang
    session[:locale] = "ar-JO"
  end
end