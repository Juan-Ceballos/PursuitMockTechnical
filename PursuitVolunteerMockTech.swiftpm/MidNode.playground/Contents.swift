import UIKit

//import XCTest

print("hello")
/*
1) Restate
Find the middle of linked list
2) CQ
empty list - never
even list - return second middle
3) Sample
input: 1 ->

input: 1 -> 2

input: 1 -> 2 -> 3

input: 1 -> 2 -> 3 -> 4

input: 1 -> 2 -> 3 -> 4 -> 5

input: 1 -> 2 -> 3 -> 4 -> 5 -> 6 -> 7 -> 8

Algo
- setup two var that are nodes fast slow
- set both nodes to head
-
Pseudo


*/

class ListNode<T> {
  var value: T
  var next: ListNode<T>?

  init(value: T, next: ListNode<T>? = nil) {
    self.value = value
    self.next = next
  }
}

func midNode(_ head: ListNode<Int>?) -> Int {
  var fast = head
  var slow = head

  while fast?.next != nil {
    slow = slow?.next
    fast = fast?.next?.next
  }
  
  return slow!.value
}
// 0, 1, 2, 3, 4
var node1 = ListNode(value: 0)
var node2 = ListNode(value: 1)
var node3 = ListNode(value: 2)
var node4 = ListNode(value: 3)
var node5 = ListNode(value: 4)
//var node6 = ListNode(value: 5)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
//node5.next = node6


print(midNode(node1))

// class SolutionTest: XCTestCase {

//   static var allTests = [("Test Sample", checkTest)]

//   func checkTest() {
//     XCTAssertEqual(-1, midNode(nil))
//   }
// }

// XCTMain([testCase(SolutionTest.allTests)])
