//: Playground - noun: a place where people can play

import UIKit

var fizzbuzz1 = { (n:Int)->String in
    if n % 15 == 0 { return "FizzBuzz" }
    if n %  5 == 0 { return "Buzz" }
    if n %  3 == 0 { return "Fizz" }
    return String(n)
}

fizzbuzz1(3)
fizzbuzz1(5)
fizzbuzz1(15)


var fizzbuzz2:(Int)->String = { n in
    if n % 15 == 0 { return "FizzBuzz" }
    if n %  5 == 0 { return "Buzz" }
    if n %  3 == 0 { return "Fizz" }
    return String(n)
}
fizzbuzz2(3)
fizzbuzz2(5)
fizzbuzz2(15)
