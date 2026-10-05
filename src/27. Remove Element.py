class Solution:
  #two pointers
  # N is the size of nums
  # time complexicity O(N)
  # space complexity O(1)
  def removeElement(self, nums: List[int], val: int)
    if nums is None or len(nums) == 0:
      return 0
    l, r == 0, len(nums) -1
    while l < r://already done
      while (l < r and nums[l] != val)://指针跳出
        l += 1
      while (l < r and nums[l] == val):
        r -= 1
      nums[l], nums[r] = nums[r], nums[l]
    return l if nums[l] == val else l + 1


