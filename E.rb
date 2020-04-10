def valid?(n, k)
  return false unless [n, k].all?{|obj| obj.is_a?(Integer)}
  return false if n < 1 || n > 10**100
  return false if k < 1 || k > 3
  true
end

def everywhere_zero(n, k)
  return nil unless valid?(n, k)
  nums = (1..n).map{|num| num.to_s.split(" ").map(&:to_i)}.flatten
  arr = nums.map{|x| x.to_s.split("").map(&:to_i)}
  k_cnt = arr.select{|x| x.size == k }.length
  zeros = arr.select{|a| a.include?(0)}    
  z_cnt = zeros.map{|z| z.select{|x| x != 0}}.length
  if k == 1
    k_cnt + z_cnt
  else
    k_cnt - z_cnt 
  end
end