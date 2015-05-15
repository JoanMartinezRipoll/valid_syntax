require "valid_syntax/version"

module ValidSyntax

  String.class_eval do

    attr_accessor :syntax_errors

    def is_valid_syntax
      catch(:x) do
        eval("throw :x
          "+ "#{self}" )
      end
      true

    rescue SyntaxError => e
      str = e.message.gsub(/\(eval\):\d+/) do |match|
        match.gsub(/\d+/) do |match|
          match.to_i - 1
        end
      end
      self.syntax_errors = str.gsub(/\(eval\)/, 'line')
      false
    end
  end
end
