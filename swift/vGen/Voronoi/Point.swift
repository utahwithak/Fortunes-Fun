//
//  Point.swift
//  VGen
//
//  Created by Carl Wieland on 4/22/15.
//  Copyright (c) 2015 Carl Wieland. All rights reserved.
//

import Foundation

public class Point:Equatable,Hashable {
    public let x:Double
    public let y:Double
    
    public init(x:Double, y:Double){
        self.x = x
        self.y = y
    }
    
    public var hashValue:Int{
        return self.x.hashValue ^ self.y.hashValue
    }
    
    public var cgPoint:CGPoint{
       return CGPointMake(CGFloat(self.x), CGFloat(self.y))
    }
}

public func == (lhs:Point, rhs:Point)->Bool{
    return (lhs.y - rhs.y < 1e-5 && lhs.y - rhs.y > -(1e-5) ) && (lhs.x - rhs.x < 1e-5 && lhs.x - rhs.x > -(1e-5) )
}


extension Point:Printable{
    public var description:String{
        let xStr = String(format: "%.2f", x)
        let yStr = String(format: "%.2f", y)
        return "(\(xStr),\(yStr))"
    }
}