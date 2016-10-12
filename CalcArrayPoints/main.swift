//
//  main.swift
//  CalcArrayPoints
//
//  Created by iGuest on 10/6/16.
//  Copyright © 2016 iGuest. All rights reserved.
//

import Foundation

// Basic Calculations

func add(left : Int, right : Int) -> Int {
    return left + right
}

func subtract(left : Int, right : Int) -> Int {
    return left - right
}

func multiply(left : Int, right : Int) -> Int {
    return left * right
}

func divide(left : Int, right : Int) -> Int {
    return left / right
}

func mathOperation(left : Int, right : Int, operation: (Int, Int) -> Int) -> Int {
    return operation(left, right);
}

// Array Fun

func add(array: [Int]) -> Int {
    var sum = 0;
    for num in array {
        sum += num;
    }
    return sum;
}

func multiply(array: [Int]) -> Int {
    var product = 1;
    for num in array {
        product *= num;
    }
    return product;
}

func count(array: [Int]) -> Int {
    return array.count;
}

func average(array: [Int]) -> Int {
    var sum = 0;
    for num in array {
        sum += num;
    }
    return sum / array.count;
}

func reduce(array: [Int], operation: ([Int]) -> Int) -> Int {
    return operation(array);
}

// Points

func add(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = add(left: p1.0, right: p2.0);
    result.y = add(left: p1.1, right: p2.1);
    return result;
}

func subtract(p1 : (Int, Int), p2 : (Int, Int)) -> (Int, Int) {
    var result : (x: Int, y: Int);
    result.x = subtract(left: p1.0, right: p2.0);
    result.y = subtract(left: p1.1, right: p2.1);
    return result;
}

// Non-two-arity handling

func add(_ points: (Int, Int)...) -> (Int, Int) {
    var result : (x: Int, y: Int) = (0, 0);
    for point in points {
        result.x += point.0;
        result.y += point.1;
    }
    return result;
}

func subtract(_ points: (Int, Int)...) -> (Int, Int) {
    var result : (x: Int, y: Int) = (0, 0);
    for point in points {
        result.x -= point.0;
        result.y -= point.1;
    }
    return result;
}

// Dictionaries

func add(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    var result = [
        "x" : Int(),
        "y" : Int()
    ]
    if (p1["x"] != nil && p1["y"] != nil && p2["x"] != nil && p2["y"] != nil) {
        result["x"] = p1["x"]! + p2["x"]!;
        result["y"] = p1["y"]! + p2["y"]!;
    }
    return result
}

func subtract(p1 : [String : Int], p2 : [String : Int]) -> [String : Int]? {
    var result = [
        "x" : Int(),
        "y" : Int()
    ]
    result["x"] = p1["x"]! - p2["x"]!;
    result["y"] = p1["y"]! - p2["y"]!;
    return result
}

// Doubles

func add(p1 : [String : Double], p2 : [String : Double]) -> [String : Double]? {
    var result = [
        "x" : Double(),
        "y" : Double()
    ]
    result["x"] = p1["x"]! + p2["x"]!;
    result["y"] = p1["y"]! + p2["y"]!;
    return result
}

func subtract(p1 : [String : Double], p2 : [String : Double]) -> [String : Double]? {
    var result = [
        "x" : Double(),
        "y" : Double()
    ]
    result["x"] = p1["x"]! - p2["x"]!;
    result["y"] = p1["y"]! - p2["y"]!;
    return result
}
