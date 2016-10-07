//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/6/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

func add(num1 : Int, num2 : Int) -> Int {
    return num1 + num2
}

func add(nums: [Int]) -> Int {
    var sum = 0;
    for num in nums {
        sum += num;
    }
    return sum;
}

func subtract(num1 : Int, num2 : Int) -> Int {
    return num1 - num2
}

func multiply(num1 : Int, num2 : Int) -> Int {
    return num1 * num2
}

func multiply(nums: [Int]) -> Int {
    var product = 0;
    for num in nums {
        product *= num;
    }
    return product;
}

func divide(num1 : Int, num2 : Int) -> Int {
    return num1 / num2
}

func count(nums: [Int]) -> Int {
    return nums.count;
}

func average(nums: [Int]) -> Int {
    var sum = 0;
    for num in nums {
        sum += num;
    }
    return sum / nums.count;
}

func calc(num1 : Int, num2 : Int, op: (Int, Int) -> Int) -> Int {
    return op(num1, num2);
}

func calc(nums: [Int], op: ([Int]) -> Int) -> Int {
    return op(nums);
}

func addPoints(point1 : (Int, Int), point2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = point1.0 + point2.0;
    result.y = point1.1 + point2.1;
    return result;
}

func subtractPoints(point1 : (Int, Int), point2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = point1.0 - point2.0;
    result.y = point1.1 - point2.1;
    return result;
}

var point = [
    "x": Int(),
    "y": Int(),
]

let response = readLine(strippingNewline: true)!;
let opertr = String.init(response)!;
