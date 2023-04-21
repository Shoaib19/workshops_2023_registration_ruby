class CountElements
  def initialize(nums)
    @nums = nums
  end

  def perform
    nums.each_with_object(Hash.new(0)) { |num, hash| hash[num] += 1 }
  end

  private

  attr_reader :nums
end
