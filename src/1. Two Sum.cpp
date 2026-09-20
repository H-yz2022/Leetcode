//straight=forward
// one pointer -->return the index 
//O(N)
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        int n = nums.size();
        for (int i = 0; i < n - 1; i++) {
            for (int j = i + 1; j < n; j++) {
                if (nums[i] + nums[j] == target) {
                    return {i, j};
                }
            }
        }
        return {}; // No solution found
    }
};

//hash table
//key value: element + index 
// find the deduct value in the table instead of looking all the possible sum
//O(1)
/*
func(nums, target)->[i]:
   result=[]
   map =HashTable()
   for i in [0, ken(nums)):
       map.add(nums[i].i)
   for j in [0, ken(nums)):
       diff = target - nums[j]      
       if (map.containskey(diff) add
           map.get(diff) !=j)
           result[0] = j
           result[1] = mao.get (diff)
           return result
return result


    */
class Solution {
public:
    vector<int> twoSum(vector<int>& nums, int target) {
        unordered_map<int, int> numMap;
        int n = nums.size();

        for (int i = 0; i < n; i++) {
            int complement = target - nums[i];
            if (numMap.count(complement)) {
                return {numMap[complement], i};
            }
            numMap[nums[i]] = i;
        }

        return {}; // No solution found
        
    }
};
