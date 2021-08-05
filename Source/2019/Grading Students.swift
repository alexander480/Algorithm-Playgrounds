
// https://www.hackerrank.com/challenges/grading/problem

import Foundation

/*
 * Complete the 'gradingStudents' function below.
 *
 * The function is expected to return an INTEGER_ARRAY.
 * The function accepts INTEGER_ARRAY grades as parameter.
 */

func gradingStudents(grades: [Int]) -> [Int] {
    var rounded = [Int]()
    
    for grade in grades {
        if grade < 38 { rounded.append(grade) }
        else {
            let distanceFromFive = 5 - (grade % 5)
            if distanceFromFive > 2 { rounded.append(grade) }
            else { rounded.append(grade + distanceFromFive) }
        }
    }
    print(rounded)
    
    return rounded
}
