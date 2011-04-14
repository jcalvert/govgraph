class City < Neo4j::Rails::Model
  property :name, :type => String
  property :population, :type => String

end
