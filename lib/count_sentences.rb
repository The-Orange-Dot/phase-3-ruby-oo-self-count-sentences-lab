require 'pry'

class String
  def sentence?
    self.include? '.'
  end

  def question?
    self.include? '?'
  end

  def exclamation?
    self.include? '!'
  end

  def count_sentences
    split_sentence = self.split(/[.?!]/)
    no_empty_string = split_sentence.reject { |string| string.empty? }
    no_empty_string.length
  end
end
