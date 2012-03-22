class Wadsworth < Padrino::Application
  register SassInitializer
  register Padrino::Mailer
  register Padrino::Helpers
  register Padrino::Rendering

  enable :sessions

  configure :development do
    register BaristaInitializer
  end
end
