class Organization < Neo4j::Rails::Model
  property :government, :type => String
  property :nonprofit, :type => String
  property :corporation, :type => String
  property :foreign, :type => String
  property :name, :type => String

end
