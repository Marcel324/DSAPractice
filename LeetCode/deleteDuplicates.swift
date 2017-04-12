https://leetcode.com/submissions/detail/99906404/


//Make a linked list using this class
public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


func deleteDuplicates(_ head: ListNode?) -> ListNode? {
    guard head != nil else {return head}
    var currentNode = head!
    while currentNode.next != nil {
        print("next value: \(currentNode.next!.val) current value: \(currentNode.val)")
        if currentNode.next!.val == currentNode.val {
            if currentNode.next?.next != nil {
            currentNode.next = currentNode.next!.next!
            } else {
                currentNode.next = nil
            }
        }else {
        currentNode = currentNode.next!
        }
    }
    return head
}

//Linked List Sample
var head = ListNode(2)
var nextNode = ListNode(2)
var nextNextNode = ListNode(2)
var nextNextNextNode = ListNode(6)