# Using iteration, we're writing a method #fibs which takes a number and returns an array containing that many numbers from the fibonacci sequence. Using an example input of 8, this method should return the array [0, 1, 1, 2, 3, 5, 8, 13].
def fibs(num)
  i, j = 0, 1
	array = [0]
    while i <= num
      i, j = j, i + j
			array.push(i)
  	end
	return array
end

# Now writing another method #fibs_rec which solves the same problem recursively.
def fib_rec(count)
	# Error check
	if count < 0 then
		raise ArgumentError, "The number must be a positive integer."
	end

	# Terminating the base cases
	return [] if count == 0
	return [0] if count == 1
	return [0,1] if count == 2

	# Recursion
	seq = fib_rec(count - 1)

	# The recursive function
	seq << seq[-2] + seq[-1]

	return seq
end

# Printing out the Fibonacci sequence array using each of our respective methods
p fibs(36)
p fib_rec(13)
p fib_rec(38)
