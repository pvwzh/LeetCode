# Definition for singly-linked list.
class ListNode(object):

    def __init__(self, x):
        self.val = x
        self.next = None


class Solution(object):

    def deleteDuplicates(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """
        if head:
            cur_node = head
            next_node = cur_node.next

            while next_node != None:
                cur_val = cur_node.val
                next_val = next_node.val

                if next_val == cur_val:
                    tmp = next_node
                    next_node = next_node.next
                    del tmp
                    cur_node.next = next_node
                else:
                    cur_node = next_node
                    next_node = next_node.next

        return head


def ouput_list_node(node):
    if node:
    	print(node.val)
    	while node.next != None:
    		node = node.next
    		print(node.val)

if __name__ == '__main__':
    sol = Solution()
    # a1 = ListNode(1)
    # a2 = ListNode(1)
    # a3 = ListNode(2)
    # a1.next = a2
    # a2.next = a3
    # a1 = ListNode(1)
    # a2 = ListNode(1)
    # a3 = ListNode(2)
    # a4 = ListNode(3)
    # a5 = ListNode(3)
    # a1.next = a2
    # a2.next = a3
    # a3.next = a4
    # a4.next = a5
    a1 = None
    head = sol.deleteDuplicates(a1)
    ouput_list_node(head)

