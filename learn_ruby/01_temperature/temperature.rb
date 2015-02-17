def ftoc temperature
  result = (temperature - 32) * 5.0 / 9.0
  result
end

def ctof temperature
  result = (temperature * 9.0/5.0) + 32
  result
end
