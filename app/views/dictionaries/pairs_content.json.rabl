child :main_word, :root => "main_word", :object_root => false do
    extends "dictionaries/words_content"
end
child :rel_word, :root => "rel_word", :object_root => false do
    extends "dictionaries/words_content"
end
node :status do |pair|
    Pair.statuses[pair.status]
end