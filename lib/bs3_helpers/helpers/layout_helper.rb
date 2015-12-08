
module Bs3Helpers
	module Helpers
		module LayoutHelper
			def grid(opts={},&block)
				@grids         = %w{ col offset pull push }
				@sizes         = %w{ xs sm md lg xl }
				index = 13

				@sizes.each do |s| 
					index.times do |i|
						instance_variable_set "@col_#{s}_#{i}", "#{@grids.fetch(0)}-#{s}-#{i}"
						instance_variable_set "@col_#{s}_#{@grids.fetch(1)}_#{i}", "#{@grids.fetch(0)}-#{s}-#{@grids.fetch(1)}-#{i}"
						instance_variable_set "@col_#{s}_#{@grids.fetch(2)}_#{i}", "#{@grids.fetch(0)}-#{s}-#{@grids.fetch(2)}-#{i}"
						instance_variable_set "@col_#{s}_#{@grids.fetch(3)}_#{i}", "#{@grids.fetch(0)}-#{s}-#{@grids.fetch(3)}-#{i}"
					end
				end
				@classes = []
				
				if opts[:full]
					@classes << @col_xs_12 
					@classes << @col_sm_12 
					@classes << @col_md_12
					@classes << @col_lg_12
					@classes << @col_xl_12
					content_tag :div,'',class: @classes.join(' '),&block
				end
			end
		end
	end
end
