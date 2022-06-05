# Definition for singly-linked list.
# class ListNode:
#     def __init__(self, val=0, next=None):
#         self.val = val
#         self.next = next
class Solution:
    def mergeNodes(self, head: Optional[ListNode]) -> Optional[ListNode]:
        dum = pre = ListNode(0)
        total = 0
        while head:
            if head.val != 0:
                total += head.val
            else:
                dum.next = ListNode(total)
                dum = dum.next
                total = 0
            head=head.next
        return pre.next.next