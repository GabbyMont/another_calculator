def divide(x, y)
	x/y


 #   # Calculate sign of divisor i.e.,
 #   # sign will be negative only iff
 #   # either one of them is negative
 #   # otherwise it will be positive
 #   sign = -1 
 #   if dividend < 0 ^  divisor < 0 else 1 end
   
 #   # Update both divisor and
 #   # dividend positive
 #   dividend = dividend.abs
 #   divisor = divisor.abs
   
 #   # Initialize the quotient
 #   quotient = 0
 #   while dividend >= divisor
 #       dividend -= divisor
 #       quotient += 1
   
 #   return sign * quotient
	# end
end
print divide(10,5)