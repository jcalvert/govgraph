class State < Neo4j::Rails::Model
  property :name, :type => String
  property :abbreviation, :type => String
  property :population, :type => String

end
