class Stream
  include MongoMapper::Document

  key :name,   String
  key :title,  String
  key :status, Integer

  many :viewers

  timestamps!
end
