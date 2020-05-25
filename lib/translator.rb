require 'yaml'
require 'pry'
def load_library(file_path)
    emo_ref = YAML.load_file("lib/emoticons.yml")
  emo_library = {}
  emo_ref.each do |name,arrays|
      emo_library[name] ||= {}
      emo_library[name][:english] = arrays[0]
      emo_library[name][:japanese] = arrays[1]
  end
emo_library
end


require 'pry'

def get_japanese_emoticon(file_path, emoticon)
  library = load_library(file_path)
 
 library.each do |meaning, symbols|
  
  if emoticon == symbols[:english]
   return symbols[:japanese] 
 
 
   #return message = "Sorry, that emoticon was not found"
end

end
"Sorry, that emoticon was not found"
end
 #binding.pry
  
  
  


def get_english_meaning(file_path, emoticon)
 library = load_library(file_path)
  
  found_meaning = library.keys.find do |key|
     library[key][:japanese]==emoticon
   end
   
   if found_meaning
    found_meaning
  else 
    "Sorry, that emoticon was not found"
   end
  
  end
  
