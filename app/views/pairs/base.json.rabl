extends "dictionaries/pairs_content"
attributes :dictionary_id
node :status do |pair|
    Pair.statuses[pair.status]
end
