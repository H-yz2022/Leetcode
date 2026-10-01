class Solution:
  #Iteration
  # N is the size of linked list
  # Time complexirty: O(N)
  # Space complexity: O(1)
  def swapPairs(self. head: listNode) -> ListNode:
    if head == None or head.next == None:
      return head
      res = ListNode()
      res.next = head
      cur = res
      while cur,next != None and cur,next,next != None:
      nxt = head.next
      tmp = nxt.next
      cur.next = nxt
      nxt.next =head
      head.next = tmp
      cur = head
      head = head.next
    return res. next

class Solution:
  # Recursion
  # N is the size of linked list
  # Time complexirty: O(N)
  # Space complexity: O(N)
  def swapParis(self, head: ListNode)-> ListNode:
    if head == None or head.next == None:
      return head
      nxt = head.next
      head.next = self.swapPair(head.next.next)
      nxt.next = head
      return nxt
  
