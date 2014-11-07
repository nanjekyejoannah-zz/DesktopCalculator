require 'green_shoes'

Shoes.app(title: "My calculator", width: 200, height: 240) do

	number_field = nil
	@number = 0
	flow width: 200 , height: 240 do

		flow width: 0.7, height: 0.2 do
      		background rgb(0, 157, 228)
      		number_field = para @number , margin: 10
    	end

    	flow width: 0.3, height: 0.2 do
    		button 'del',  width: 1.0 , height: 1.0 do
    		end
    	end

    	flow width: 1.0, height: 0.8 do
      		background rgb(139, 206, 236)

      		%w(7 8 9 + 4 5 6 - 1 2 3 / 0 . = *).each do |btn|
      			button btn , width: 50 , height: 50 do
      			end
      		end
    	end

	end
end