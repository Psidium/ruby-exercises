def add(num1, num2)
  result = num1 + num2
  result
end

def subtract *numbers
  result = numbers[0]
  numbers.delete_at(0)
  numbers.each do |number|
    result -= number
  end
  result
end

def sum numbers
  result = 0
  numbers.each do |number|
    result += number
  end
  result
end

def multiply *numbers
  numbers.inject do |product, number|
    product * number
  end
end

def power num1, num2
  num1 ** num2
end

def factorial num
  #exceptions
  if num == 0
    return 1
  end
  #calculate the factorial
  result = 1
  #goes from 1 upto the input
  1.upto(num) do |n|
    result *= n
  end
  result
end