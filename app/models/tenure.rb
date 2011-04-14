class Tenure < Neo4j::Rails::Model
  property :start, :type => Date
  property :end, :type => Date

end
