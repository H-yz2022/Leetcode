//Backtracking
/*
l >= r
l < r
l = r = n

func(n) -> [];
  result = []
  backtracking ( n, result, 0 , "")
  return result
backtracking (n, result, left, right, str) -> void
  if right > left: 
    return
  if left==right==n:
    result.add(str)
    return
  if left < n:
    backtracking (n, result, left + 1, right, str + "(")
  if right < left:
    backtracking (n, result, left, right +1, str + ")")


*/

class Solution {
    vector<string> combinations;
    void generate(int n, int open, int close, string s){
        if(open + close == 2 * n){
            combinations.push_back(s);
            return;
        }

        if(open < n){
            generate(n, open + 1, close, s + '(');
        }
        if(close < open){
            generate(n, open, close + 1, s + ')');
        }
        
    }
public:
    vector<string> generateParenthesis(int n) {
        generate(n, 0, 0, "");
        return combinations;
    }
};







