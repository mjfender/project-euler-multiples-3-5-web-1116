class Multiples
  attr_accessor :limit
  def initialize(argument)
    @limit = argument
  end

  def collect_multiples
    nums = [3, 5]
    multiples_in_range = []

    nums.each do |num|
      i = 1
      until num * i >= limit do
        multiples_in_range << num * i
        i += 1
      end
    end
    multiples_in_range.sort.uniq
  end

  def sum_multiples
    self.collect_multiples.inject { |result, num| result + num }
  end


end