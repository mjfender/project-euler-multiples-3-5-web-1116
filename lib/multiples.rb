# Enter your procedural solution here!
def collect_multiples(number)
  max = number
  nums = [3, 5]
  multiples_in_range = []

  nums.each do |num|
    i = 1
    until num * i >= max do
      multiples_in_range << num * i
      i += 1
    end
  end
  multiples_in_range.sort.uniq

end

def sum_multiples(limit)
  collect_multiples(limit).inject { |result, num| result + num }
  # sum = 0
  # collect_multiples(limit).each do |num|
  #   sum += num
  # end
  # sum
end
