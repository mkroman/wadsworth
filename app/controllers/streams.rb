Wadsworth.controllers :streams do
  layout :application
  
  get :index do
    "dd"
  end

  get :show, map: "/streams/:name" do
    if @stream = Stream.first(name: params[:name])
      render "streams/show"
    else
      render "streams/not_found"
    end
  end

  get :stream_viewer_count, map: "/streams/:name/viewers" do
    if stream = Stream.first(name: params[:name])
      criterias = {
        :stream_id => stream.id,
        :address   => request.ip,
        :time.gt   => Time.now - 90
      }

      stream.viewers.delete_all :time.lt => Time.now - 120

      if viewer = Viewer.first(criterias)
        viewer.time = Time.now
        viewer.save
      else
        Viewer.create address: request.ip, stream: stream, time: Time.now
      end

      stream.viewers.count.to_s
    else
      "-1"
    end
  end

  get :popup, map: "/streams/:name/popup" do
    if @stream = Stream.first(name: params[:name])
      render "streams/popup", layout: :popup
    end
  end
end
