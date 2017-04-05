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
            dic = {}
            next_node = head.next
            dic[head.val] = 1
            while next_node:
                key = next_node.val
                dic[key] = dic.get(key, 0) + 1
                next_node = next_node.next

            start_node = ListNode(None)
            start_node.next = head

            pre_node = start_node
            cur_node = head
            next_node = cur_node.next
            while cur_node:
                key = cur_node.val
                if dic[key] > 1:
                    pre_node.next = cur_node.next
                else:
                    pre_node = cur_node

                cur_node = next_node
                if cur_node:
                    next_node = cur_node.next
            return start_node.next
        return head


def ouput_list_node(node):
    if node:
        print(node.val)
        while node.next:
            node = node.next
            print(node.val)


if __name__ == '__main__':
    sol = Solution()
    # a1 = ListNode(1)
    # a2 = ListNode(1)
    # a3 = ListNode(2)
    # a1.next = a2
    # a2.next = a3
    a1 = ListNode(1)
    a2 = ListNode(1)
    a3 = ListNode(2)
    a4 = ListNode(3)
    a5 = ListNode(3)
    a1.next = a2
    a2.next = a3
    a3.next = a4
    a4.next = a5
    # a1 = None
    head = sol.deleteDuplicates(a1)
    ouput_list_node(head)
