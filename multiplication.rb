def multiplication(x,y)
	if y == 0 #if y equals the value of 0 then it will return 0 b/c if multiplying by 0 it will always equal 0
		return 0 #this will return 0
	end
	if y > 0
		return x + multiplication(x,y-1) # x + (x how ever many times y-1 ) so if y = 8 x will add itself 7 times since it starts out with x + so it adds itself 8 times
	end
	if y < 0
		return -multiplication(x,-y) # x - x - x 
	end
end