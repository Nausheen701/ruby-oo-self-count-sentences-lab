require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else false
    end
  end

  def count_sentences
   # binding.pry
   self.split(/\.+|!+|\?+/).length
  end
end

 # regex - // are the wrappers telling ruby we are working in REGEX - a way of detecting patterns in strings
    # we are telling split to look for periods that are next to each other ("\.+") - the + tells regex that
    # we are looking for instances of periods or periods next to each other
    # we separate the terms of split with pipes
    # we need to put \'s in front of . and ? because regex will regard them as operators otherwise -we don't need to do this with !
