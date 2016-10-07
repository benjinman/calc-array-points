//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func add(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

func subtract(num1 : Int, num2 : Int) -> Int {
    return num1 - num2
}

func multiply(num1 : Int, num2 : Int) -> Int {
    return num1 * num2
}

func divide(num1 : Int, num2 : Int) -> Int {
    return num1 / num2
}

func calc(num1 : Int, num2 : Int, op: (Int, Int) -> Int) -> Int {
    return op(num1, num2);
}

func count(nums: [Int]) -> Int {
    return nums.count;
}

let list: [Int] = [2, 4, 6, 8, 10];
print(count(nums: list));

func addPoints(point1 : (Int, Int), point2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = point1.0 + point2.0;
    result.y = point1.1 + point2.1;
    return result;
}

addPoints(point1: (1, 2), point2: (3, 4))
var p = (x: 1, y: 2);
p.x = 4;
print(p);

func avg(nums: [Int]) -> Int {
    var sum = 0;
    for num in nums {
        sum += num;
    }
    return sum / nums.count;
}

func fact(num: Int) -> Int {
    if (num == 1) {
        return num;
    }
    
    return num * fact(num: (num - 1));
}

print(avg(nums: list))
print(fact(num: 5))

let line = "5 fact";
if (line.contains("count") || line.contains("avg") || line.contains("fact")) {
    let nums : [String] = line.characters.split(separator: " ").map(String.init);
    var numbers : [Int] = [];
    for i in 0...nums.count - 2 {
        numbers.append(Int(nums[i])!);
    }
}
