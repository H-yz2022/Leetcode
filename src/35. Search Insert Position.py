#regular
class Solution(object):
  def searchInsert(self, nums, target):
    # One pass
    # Time complexity O(N)
    # Space complexity O(1)
    if nums == None or len(nums) == 0:
      return 0
    for i, num in enumerate(nums):
      if num >= target:
        return i
    return len(nums)


class Solution(object):
  def searchInsert(self, nums, target):
    #  binary serarch
    # Time complexity O(logN)
    # Space complexity O(1)
    if nums == None or len(nums) == 0:
      return 0
    left = 0
    right = len(nums)-1
    while(left < right):
      mid = left + (right = left)//2
      if nums[mid] == target:
        return mid\
      elif nums[mid] > target:
          right = mid
      else: 
        left = mid +1
    retrun left if nums[left] >= target else left +1
      
    
