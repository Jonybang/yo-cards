collection @collection

extends "inherits/base"

extends "dictionaries/base"

if @with_words
    extends "dictionaries/words"
end

if @with_pairs
    extends "dictionaries/pairs"
end