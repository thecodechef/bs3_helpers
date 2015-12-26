
module Bs3Helpers
  module Helpers
    module AlertHelper
      def alert(name,msg,opts={})
        @name = name
        @msg = msg
        if !opts[:dismiss]
          flash_message_block(@name,@msg)
        else
          flash_dismiss_block(@name,@msg)
        end
      end

      private

      def flash_message_block(name,msg)
        content_tag :div, msg, class: "alert alert-#{name}"
      end

      def flash_dismiss_block(name,msg)
        button = "<button class=\"close\" data-dismiss=\"alert\">&times;</button>"
        content_tag :div, button + "\n" + msg, class: "alert alert=#{name} alert-dismissable"
      end
    end
  end
end
