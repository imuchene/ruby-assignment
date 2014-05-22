def hello(name)
  "Hello, " + name
end

def starts_with_consonant?(s)
  if (s.is_a? String) && (s.match(/^[^aeiou]/i).is_a? MatchData)
    return true
  else
    return false
  end
end

def binary_multiple_of_4?(s)
  s = s.to_i(2)
  if s % 4 == 0
    return true
  else
    return false
  end
end
