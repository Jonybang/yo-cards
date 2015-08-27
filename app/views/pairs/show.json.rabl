object @resource

extends "inherits/base"

extends "pairs/base"

child :dictionary, :root => "dictionary", :object_root => false do
    attribute :id => :server_id
    attribute :name
end