import heapq

# Definition for singly-linked list.


class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next


class Solution:
    def mergeKLists(self, lists: ListNode) -> ListNode:
        def vals(node):
            while node:
                yield node.val
                node = node.next
        dummy = last = ListNode(None)
        for val in heapq.merge(*map(vals, lists)):
            last.next = last = ListNode(val)
        return dummy.next
