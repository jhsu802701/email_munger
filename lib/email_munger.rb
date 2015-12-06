require 'email_munger/version'

#
module EmailMunger
  def self.encode(str_input)
    str_output = ''
    str_input.each_char do |c|
      str_c = '&#' + c.ord.to_s + ';'
      str_c = "<i>#{str_c}</i>" if c == '@' || c == '.'
      str_output += str_c
    end
    str_output
  end
end
# Your new gem is a module by default.  You may wish to use a class instead.
