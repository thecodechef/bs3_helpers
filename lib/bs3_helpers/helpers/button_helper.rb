
module Bs3Helpers
  module Helpers
    module ButtonHelper
      
      def btn(opts={},&block)
      	
      	sizes = %W{xs sm lg}
      	colors = %W{primary secondary success info warning danger link}
        prefix = "btn-"
      	@classes = []

      	if !@classes.empty?
      		
      		sizes.each do |s|
      			@classes << s.prepend(prefix) if opts[:type] == s.to_sym
      		end

      		colors.each do |c|
      			@classes << c.prepend(prefix) if opts[:style] == c.to_sym
      		end

      	else
      		
      		@classes << "btn"

      		sizes.each do |s|
      			@classes << s.prepend(prefix) if opts[:type] == s.to_sym
      		end

      		colors.each do |c|
      			@classes << c.prepend(prefix) if opts[:style] == c.to_sym
      		end

      	end

      	@classes << "".prepend(prefix) if opts[:block]

      	content_tag opts[:tag].downcase.to_sym,opts[:value], class: @classes.join(' '),opts[:data],&block

      end

    end
  end
end
