//https://leetcode.com/problems/invert-binary-tree/#/description

class Solution {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let unwrappedRoot = root else {
            return nil
        }
        invertTreeRecursively(root!)
        return root
    }
    func invertTreeRecursively(_ node: TreeNode) {
        swapChildren(node)
        if node.left != nil {
            invertTreeRecursively(node.left!)
        }
        if node.right != nil {
            invertTreeRecursively(node.right!)
        }
    }
    func swapChildren(_ root: TreeNode) {
        let left = root.left
        let right = root.right
        root.left = right
        root.right = left
    }
}