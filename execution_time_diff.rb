require 'byebug'
def my_min(arr)
  min = arr[0]
  (0...arr.length).each do |i|
    min = arr[i] if arr[i] < min
  end
  min
end

def largest_contiguous_subsum(list)
  max = 0
  negative = 0
  (0...list.length).each do |idx|
    if list[idx] < 0
      negative += list[idx]
    elsif max < list[idx] && max + negative + list[idx] < list[idx]
      max = list[idx]
      negative = 0
    else
      max += list[idx] + negative
    end
  end
  max
end
