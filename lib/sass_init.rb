module SassInitializer
  def self.registered app
    require "sass/plugin/rack"

    Sass::Plugin.options.merge!({
    	     css_location: Padrino.root("public/stylesheets"),
    	template_location: Padrino.root("app/stylesheets")
    })

    app.configure :production do
      Sass::Plugin.options[:style] = :compressed
    end

    app.use Sass::Plugin::Rack
  end
end
