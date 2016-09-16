# Definition for a binary tree node.
class TreeNode
    attr_accessor :val, :left, :right
    def initialize(val)
        @val = val
        @left, @right = nil, nil
    end
end

# @param {TreeNode} root
# @return {TreeNode}
def invert_tree(root)
  cur = 0
  arr = Array.new
  if !root.nil?
    arr.push root
  end
  while cur<arr.size
    node = arr[cur]
    if !(node.left.nil?&&node.right.nil?)
      if !node.left.nil?
        arr.push node.left
      end
      if !node.right.nil?
        arr.push node.right
      end
      temp = node.left
      node.left = node.right
      node.right = temp
    end
    cur += 1
  end
  root
end
