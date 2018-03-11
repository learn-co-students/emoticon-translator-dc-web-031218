# require modules here
require 'yaml'
require 'pry'

def load_library(yaml_file)
  # code goes here
  translated_hash = {"get_meaning" => {}, "get_emoticon" => {}}

  library = YAML.load_file(yaml_file)
  library

  library.each do |emotion|
    translated_hash["get_meaning"][emotion[1][1]] = emotion[0]
    translated_hash["get_emoticon"][emotion[1][0]] = emotion[1][1]
    # binding.pry
  end
  # binding.pry

  translated_hash
end

def get_japanese_emoticon(yaml_file, emoticon)
  # code goes here
  translated_hash = load_library(yaml_file)

  if translated_hash["get_emoticon"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  end

  translated_hash["get_emoticon"][emoticon]
  # binding.pry
end

def get_english_meaning(yaml_file, emoticon)
  # code goes here
  translated_hash = load_library(yaml_file)

  if translated_hash["get_meaning"][emoticon] == nil
    return "Sorry, that emoticon was not found"
  end

  translated_hash["get_meaning"][emoticon]
end
