class Person < Neo4j::Rails::Model
  property :first_name, :type => String
  property :last_name, :type => String

end
