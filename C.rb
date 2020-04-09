#問題: https://atcoder.jp/contests/abc154/tasks/abc154_c

def valid?(n, *as)
  return false unless n.is_a?(Integer)
  return false unless as.all?{|obj| obj.is_a?(Integer)}
  return false if n < 2 || n > 100
  return false if as.any?{|num| num < 1 || num > 10**9}
  return false if n != as.length
  true
end

def distinct_not(n, *as)
  return nil unless valid?(n, *as)
  as == as.uniq ? "YES" : "NO"
end

#test
puts distinct_not(5, 2, 1, 5, 4, 3) == "YES"
puts distinct_not(4, 1, 1, 2, 3) == "NO"
puts distinct_not(3, 1, 2, 3, 4) == nil
puts distinct_not(1, 2) == nil
puts distinct_not(2, 1, 1) == "NO"
puts distinct_not(100, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == "NO"
puts distinct_not(101, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1) == nil
puts distinct_not(3, 0, 1, 2) == nil
puts distinct_not(3, 10**9, 10**9, 1) == "NO"
puts distinct_not(3, 11**9, 11**9, 1) == nil
puts distinct_not(3, 1, 2, 4, 5) == nil
puts distinct_not("a", 1) == nil
puts distinct_not(2, "a", 3) == nil

#all true