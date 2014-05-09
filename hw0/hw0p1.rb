# Define a method sum which takes an array of integers as an argument and returns the sum of its elements. For an empty array it should return zero.

def sum(array)
    return 0 if array.empty?
    array.inject(:+)
end
#puts sum([0, 5, 9])

# Define a method max_2_sum which takes an array of integers as an argument and returns the sum of its two largest elements. For an empty array it should return zero. For an array with just one element, it should return that element.

def max_2_sum(array)
    array_size = array.size
    case array_size
    when 0
        0
    when 1
        array[0]
    else
        array.sort!.last(2).inject(:+)

    end
end

# Define a method sum_to_n? which takes an array of integers and an additional integer, n, as arguments and returns true if any two distinct elements in the array of integers sum to n. An empty array or single element array should both return false.

def sum_to_n?(array, n)

    array_size = array.size

    i = 0

    while i < array_size do
        argument = array.slice!(0)
        array.each{|x| return true if x + argument == n}
        i += 1
    end
    return false
end

#puts sum_to_n?([2, 0, 9], 9)