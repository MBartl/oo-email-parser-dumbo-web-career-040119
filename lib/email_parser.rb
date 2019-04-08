require 'pry'
# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
  
  attr_accessor :string
  
  def initialize(string)
    @string = string
  end
  
  def parse
    output = @string.split(" ")
    output.map do |email|
      email.end_with?(",") email.delete! (", ") : email
      end
    end
    output.uniq
  end
  
end