class String
  define_method(:word_counter) do |arg|

   sentence_modified = arg.downcase()

   sentence_modified = sentence_modified.gsub(/','/,"")
   sentence_modified = sentence_modified.gsub(/'.'/,"")
   sentence_modified = sentence_modified.gsub(/'?'/,"")
   sentence_modified = sentence_modified.gsub(/':'/,"")
   sentence_modified = sentence_modified.gsub(/';'/,"")

   sentence_array = sentence_modified.split(' ')

   return sentence_array.count(self.downcase()).to_s()

  end
end
