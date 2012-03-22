Wadsworth.controllers :base do
  get :index, map: "/" do
    render :"base/demo"
  end
end
