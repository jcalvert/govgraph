class Bill < Neo4j::Rails::Model
  property :name, :type => String
  property :code, :type => String
  property :version, :type => String
  property :text, :type => String

end
