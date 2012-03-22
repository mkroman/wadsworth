Padrino.configure_apps do
  enable :sessions

  set :session_secret, 'e37457e67ffe227c2b232e9d20446d869983ba300d693b62297dcaf20a993592'
end

# Mounts the core application for this project
Padrino.mount("Wadsworth").to ?/
