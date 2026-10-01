//Iteration
/*
res -> 1    ->2   -> 3 -> 4
cur  head  next   temp
res.next =head            cur.next = next     ...
cur = res                 next.next = head     ...
next = head.next          head.next = tmp     ...
tmp = next.next

*/





//Recursion自己调用自己

/*
swapNode （head)
head.next = swapnodes (head.n.next)

next.next = head

return next

end:
head=null && head = null
return heaed
swapNodes( head. next
*/
class Solution {
public:
    ListNode* swapPairs(ListNode* head) {
        // if head is NULL OR just having a single node, then no need to change anything 
        if(head == NULL || head -> next == NULL) 
        {
            return head;
        }
            
        ListNode* temp; // temporary pointer to store head -> next
        temp = head->next; // give temp what he want
        
        head->next = swapPairs(head->next->next); // changing links
        temp->next = head; // put temp -> next to head
        
        return temp; // now after changing links, temp act as our head
    }
};
