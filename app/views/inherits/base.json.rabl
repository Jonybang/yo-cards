attribute :id => :server_id
attributes :created_at, :updated_at

node :name do |obj|
    obj.name if obj.has_attribute?(:name)
end

node :class do |obj|
    obj.class.name
end