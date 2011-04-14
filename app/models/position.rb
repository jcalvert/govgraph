class Position < Neo4j::Rails::Model
  property :senate, :type => String
  property :house, :type => String
  property :executive, :type => String
  property :title, :type => String

end
