# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  n=arr.length
  res=0
  i=0
  while i<n do
    res+=arr[i]
    i=i+1
  end
  res
  
end

def max_2_sum arr
  # YOUR CODE HERE
  n=arr.length
  res=0
  if n==0   #no element
    res=0
  elsif n==1  #1 element
    res=arr[0]
  else        # >1 elements
    arr=arr.sort
    res=arr[n-2]+arr[n-1]
  end
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  num=arr.length
  if num==0   #no element
    false
  elsif num==1  #1 element
    false
  else        # >1 elements
    i=0
    j=0
    while i<num
      j=i+1
      while j<num
        if arr[i]+arr[j]==n
          return true
        end
        j+=1
      end
      i+=1
    end
    false
  end
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE
  if s =~ /\A[a-z&&[^aeiou]].*/i
    return true
  else
    return false
  end
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s=~/\A[01]*00$/ || s=~/\A[0]/
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
  def initialize(isbn,price)
    raise ArgumentError if isbn == '' || price <= 0 
    @isbn=isbn
    @price=price
  end
  
  def isbn
    @isbn
  end

  def price
    @price
  end

  def isbn=(name)
    @isbn=name
  end

  def price=(value)
    @price=value
  end

  def price_as_string
    pri=@price
    pri=sprintf "%.2f", pri
    pri=pri.to_s
    "$"+pri
  end
end

