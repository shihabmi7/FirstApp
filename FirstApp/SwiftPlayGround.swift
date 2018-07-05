//
//  SwiftPlayGround.swift
//  FirstApp
//
//  Created by Mahmud Riad on 7/4/18.
//  Copyright © 2018 Mahmud Hasan Riad. All rights reserved.
//

//: Playground - noun: a place where people can play

import UIKit
import Foundation


var first:String = "Shihab"
var second:String = "Uddin"
var job:String = "Software Developer"
var hello:String = "Hi"


// String Interpolation
print("\(first) \(second)")
print("\(first) \(second) \(job) \"\(hello)\"")

var firstValue = 10
var secondValue = 10.2

// type conversion
secondValue  = Double(firstValue) * secondValue

// constant
let  STUDENT_NO = 102 ;

// optional concept
var isMarried : Bool?

isMarried = nil
// force unwrapping
if isMarried != nil {
    print(" Shihab Uddin isMarried ? \(isMarried)")
} else
{
    print("isMarried printed as \(isMarried)")
}

isMarried = true
// optional Binding
if let optionalValue = isMarried {
    print("\(optionalValue)")
}

print("Optional Binding...")
isMarried = nil
// optional Binding
if let optionalValue = isMarried {
    print("\(optionalValue)")
}else
{
    print("Else block is working...")
}










