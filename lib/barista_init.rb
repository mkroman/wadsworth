module BaristaInitializer
  def self.registered app
    Barista.configure do |barista|
      barista.root = Padrino.root "app/scripts"
      barista.logger.level = Logger::ERROR
    end

    app.register Barista::Integration::Sinatra
  end
end
