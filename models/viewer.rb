class Viewer
  include MongoMapper::Document

  key :address, String
  key :time, Time

  belongs_to :stream
end
