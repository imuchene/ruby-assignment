def sum(x)
 unless x.empty?
    sum = 0
    x.each{|x| sum += x }
      return sum
    else
      return 0
    end
end


def max_2_sum(x)
  unless x.empty?
   return x[0]  if x.length == 1 
    x.sort!
    i = x.length
    largest = i - 1  
    second_largest = i -2 
    return x[largest] + x[second_largest]
  else
    return 0
  end
end


def sum_to_n?(x,n)
  unless x.empty?
    x = x.uniq.sort
    p x.inspect
    # Using the combination array method http://www.ruby-doc.org/core-1.9.3/Array.html#method-i-combination
    x = x.combination(2).to_a
    x = x.collect{|ar| sum(ar)}
    return true if x.include?(n)
   else
    return false
   end
end

x = [5,5,4,4,3,3,2,2,1,1]
p = sum_to_n?([1,2,3],4)
puts p
