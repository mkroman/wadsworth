MongoMapper.connection = Mongo::Connection.new('localhost', nil, :logger => logger)

case Padrino.env
  when :development then MongoMapper.database = 'babble_development'
  when :production  then MongoMapper.database = 'babble_production'
  when :test        then MongoMapper.database = 'babble_test'
end
