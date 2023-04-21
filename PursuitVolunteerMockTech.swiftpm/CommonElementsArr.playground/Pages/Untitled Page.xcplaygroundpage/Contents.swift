import UIKit

// Test
//import XCTest
//
//class SolutionTest: XCTestCase {
//  static var allTests = [
//    ("Sample", testSample),
//  ]
//
//  func testSample() {
//    XCTAssertEqual([], commonElements(arr1: [], arr2: []))
//    XCTAssertEqual([], commonElements(arr1: [1, 2, 3], arr2: []))
//    XCTAssertEqual([1], commonElements(arr1: [1, 2, 3], arr2: [1]))
//    XCTAssertEqual([1, 2], commonElements(arr1: [1, 2, 3], arr2: [1, 2]))
//  }
//}
//XCTMain([testCase(SolutionTest.allTests)])

func commonElements(arr1: [Int], arr2: [Int]) -> [Int] {
  var result = [Int]()
  guard !arr1.isEmpty, !arr2.isEmpty else {return result}
  let uniqueArr1 = Array(Set(arr1))
  let uniqueArr2 = Array(Set(arr2))
  for element in uniqueArr1 {
    if uniqueArr2.contains(element) {
      result.append(element)
    }
  }
  let resultSorted = result.sorted {$0 < $1}
  return resultSorted
}

// built in for set, intersection
func intersection(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
    return Array(Set(nums1).intersection(Set(nums2)))
}

// Sample

print(commonElements(arr1: [1, 2, 3], arr2: [1, 2]))
