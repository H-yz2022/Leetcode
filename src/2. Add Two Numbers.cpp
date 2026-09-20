// ADD  and then return a linked list

//starightforward 
// 12 | 10 ( 12 || 10) = 1
// 12 % 10 = 2
// 9-> 9 -> 9
// 9-> 9
// 8-> 9 ->0 ->1
/*
func （l1, l2)  --->listnode
  total = 0
  next1 = 0
  result - ListNode()
  cur = result
  while (l1!= null and l2 !=null)
    total = l1.val + l2.val +next1\
    cur.next =ListNode (totoal %10)
    next1=total/10
    l1=l1.next
    l2=l2.next
    cur=cur.next
  while l1！= null
    total = l1.val +next1
    cur.next = ListNode (total %10)
    next1 =total/10
    l1 = l1.next
    cur =cur.next
  while l2！=null:
    total=l2.val +next1
    cur.next =ListNode(total %10)
    next1 =total/10
    l2=l2.next
  if next1 !=0:
    Cur.next= ListNode(next1)
  
    retrun result.next ---> result指向空，next才是真正的值
*/





//recusion
//Time complexity: O(n)
//Space complexity:O(n) or O(1)
/*
func （l1, l2)  --->listnode
  total =l1.val +l2.val
  next1 =total/10
  res = ListNode(total%10)
  if (l1.next != null or
      l2.next != null or
      next1 != 0)
       if (l1.next != null):
         l1=l1.next
       else:
         l1 =ListNode(0）
      if (l2.next != null):
         l2=l2.next
       else:
         l2 =ListNode(0）
      l1.val =l1.val +next1
      res.next = func (l1, l2)
      
return res
  
*/
class Solution {
public:
    ListNode* addTwoNumbers(ListNode* l1, ListNode* l2) {
        ListNode* dummy=new ListNode();
        ListNode* temp=dummy;
        int carry=0;
        while(l1!=NULL || l2!=NULL || carry){
            int sum=0;
            if(l1!=NULL){
                sum+=l1->val;
                l1=l1->next;
            }
            if(l2!=NULL){
                sum+=l2->val;
                l2=l2->next;
            }
            sum+=carry;
            carry=sum/10;
            ListNode* newnode=new ListNode(sum%10);
            temp->next=newnode;
            temp=temp->next;
        }
        return dummy->next;
    }
};



