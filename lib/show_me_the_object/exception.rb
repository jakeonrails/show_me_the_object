require 'show_me_the_object'

module ShowMeTheObject
  module Exception
    attr_accessor :__raiser

    def message
      raised_by = if __raiser.respond_to?(:ai)
        __raiser.ai
      else
        __raiser.inspect
      end
      "#{super}\nRaised by: \n#{raised_by}"
    end
  end
end
