//
//  File.swift
//  TwoSum
//
//  Created by luhai on 2017/2/7.
//  Copyright © 2017年 luhai. All rights reserved.
//

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var hash: [Int : Int] = [:]
        var indexArray : [Int] = []
        
        for (numsIndex, numsElement) in nums.enumerated() {
            if let targetIndex = hash[target - numsElement] {
                indexArray.append(targetIndex)
                indexArray.append(numsIndex)
                
                return indexArray
            }
            
            hash[numsElement] = numsIndex
        }
        
        return indexArray
    }
}
