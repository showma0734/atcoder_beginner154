#問題: https://atcoder.jp/contests/abc154/tasks/abc154_b

def valid?(s)
  return false unless s.is_a?(String)
  return false if s.downcase != s 
  return false if s.downcase == s.upcase
  return false if s.length < 1 || s.length > 100
  true
end

def miss_you(s)
  return nil unless valid?(s)
  s.gsub(/[a-z]/,"x")
end

#test
puts miss_you("sardine") == "xxxxxxx"
puts miss_you("xxxx") == "xxxx"
puts miss_you("a"*100) == "x"*100
puts miss_you("a"*101) == nil
puts miss_you("") == nil
puts miss_you(1) == nil
puts miss_you("1") == nil
puts miss_you("AAA") == nil

#all true