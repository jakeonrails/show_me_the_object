require 'show_me_the_object'
require 'binding_of_caller'

module Kernel
  alias old_raise raise

  def raise(*args, &block)
    unless caller.first.include?(__FILE__)
      begin
        old_raise(*args)
      rescue Exception => e
        e.__raiser = binding.of_caller(1).eval('self')
        old_raise e
      end
    end
  end
end
