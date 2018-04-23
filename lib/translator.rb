# require modules here
require 'YAML'

def load_library(emoticon)
  hash = {"get_meaning" => {}, "get_emoticon" => {} }
  YAML.load_file(emoticon).each do |meaning, array|
    english, japanese = array
    hash["get_emoticon"][english] = japanese
    hash["get_meaning"][japanese] = meaning
  end
  hash
end

  def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
  hash = library["get_emoticon"][emoticon]
  if hash
    hash
  else
    "Sorry, that emoticon was not found"
  end
end

def get_english_meaning(file_path, emoticon)
  library = load_library(file_path)
  result = library["get_meaning"][emoticon]
  if result
    result
  else
    "Sorry, that emoticon was not found"
  end
end
