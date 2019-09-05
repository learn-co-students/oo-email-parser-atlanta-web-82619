# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailAddressParser
    attr_accessor :address_string
    def initialize (address_string)
        @address_string = address_string
    end

    def parse
        address_string.split(/[\s,]/).uniq.reject {|string| string.empty?}
    end
end