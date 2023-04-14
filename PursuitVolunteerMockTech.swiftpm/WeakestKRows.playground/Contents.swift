import UIKit

/*
Restate:
given A 2d array return the index of the row with the least zero if tie return the smallest index

Questions: at least 2 rows, k >= 1

Sample
input: [[0], [0]]
output:

Pseudo:
store weakest row 0 in variable
store strongest sum = length of row in matrix
iterate through matrix add array and store result in currentSum variable
if currentSum is less than strongest sum update variable and index
Algo:

*/

func weakestRow(matrix: [[Int]], k: Int) -> [Int] {
  var strengthTupleArr = [(Int, Int)]()
  var result = [Int]()

  for (index, row) in matrix.enumerated() {
    let currentStrength = row.reduce (0, {$0 + $1})
    let currentTuple = (currentStrength, index)
    strengthTupleArr.append(currentTuple)
  }

  let sortedStrengthTupleArr = strengthTupleArr.sorted {($0.0, $0.1) < ($1.0, $1.1)}
  
  for i in 0..<k {
    result.append(sortedStrengthTupleArr[i].1)
  }
  return result
}

print(weakestRow(matrix: [[1,1,0,0,0],
              [1,1,1,1,0],
              [1,0,0,0,0],
              [1,1,0,0,0],
              [1,1,1,1,1]], k: 3))

print(weakestRow(matrix: [[1,0,0,0],
              [1,1,1,1],
              [1,0,0,0],
              [1,0,0,0]], k: 2))

// Test

//class SolutionTest: XCTestCase {
//
//  static var allTests = [("test examples", testEverything)]
//
//  func testEverything() {
//    XCTAssertEqual([2, 0, 3], weakestRow(matrix: [[1,1,0,0,0],
//              [1,1,1,1,0],
//              [1,0,0,0,0],
//              [1,1,0,0,0],
//              [1,1,1,1,1]], k: 3))
//    XCTAssertEqual([0, 2], weakestRow(matrix: [[1,0,0,0],
//              [1,1,1,1],
//              [1,0,0,0],
//              [1,0,0,0]], k: 2))
//  }
//}
//
//XCTMain([
//  testCase(SolutionTest.allTests)
//])
//
