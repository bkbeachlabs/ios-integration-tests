//
//  MyClass.swift
//  MyFramework
//
//  Created by Andrew King on 2020-03-10.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import Foundation

public class MyClass {
    
    public init() {
    }
    
    public func printA() {
        print("A")
    }
    
    public func positiveSumOf(a: Int, b: Int) -> Int? {
        let sum = a + b
        if sum > 0 {
            return sum
        }
        return nil
    }
}
