#問題 => https://atcoder.jp/contests/abc154/tasks/abc154_a

def valid?(s, a, t, b, u)
  return false unless [s, t, u].all?{|obj| obj.is_a?(String)}
  return false unless [a, b].all?{|obj| obj.is_a?(Integer)}
  return false if s == t
  return false unless s == u || t == u
  _s, _t, _u = s, t, u
  return false if [s, t, u].map{|str| str.downcase } != [_s, _t, _u]
  return false if s.length < 1 || s.length > 10
  return false if t.length < 1 || t.length > 10
  return false if a < 1 || a > 10
  return false if b < 1 || b > 10
  true
end

def remaining_ball(s, a, t, b, u)
  return nil unless valid?(s, a, t, b, u)
  s == u ? a -= 1 : b -= 1
  "#{a} #{b}"
end

#test
puts remaining_ball("red", 3, "blue", 4, "red") == "2 4"
puts remaining_ball("red", 5, "blue", 5, "blue") == "5 4"
puts remaining_ball("red", 5, "red", 5, "blue") == nil
puts remaining_ball("red", 5, "red", 5, "red") == nil
puts remaining_ball("red", 5, "blue", 5, "orange") == nil
puts remaining_ball("red", 0, "blue", 5, "red") == nil
puts remaining_ball("red", 1, "blue", 5, "red") == "0 5"
puts remaining_ball("red", 11, "blue", 5, "red") == nil
puts remaining_ball("red", 10, "blue", 5, "red") == "9 5"
puts remaining_ball("red", 5, "blue", 0, "blue") == nil
puts remaining_ball("red", 5, "blue", 1, "blue") == "5 0"
puts remaining_ball("red", 5, "blue", 11, "blue") == nil
puts remaining_ball("red", 5, "blue", 10, "blue") == "5 9"
puts remaining_ball("red", "5", "blue", "0", "red") == nil
puts remaining_ball(1, 5, 1, 0, 1) == nil
puts remaining_ball("reeeeeeeed", 5, "blue", 5, "reeeeeeeed") == "4 5"
puts remaining_ball("reeeeeeeeed", 5, "blue", 5, "reeeeeeeeed") == nil
puts remaining_ball("red", 5, "blueeeeeee", 5, "red") == "4 5"
puts remaining_ball("red", 5, "blueeeeeeee", 5, "red") == nil
puts remaining_ball("", 5, "blue", 5, "blue") == nil
puts remaining_ball("r", 5, "blue", 5, "r") == "4 5"
puts remaining_ball("Red", 5, "blue", 5, "blue") == nil

#all true
