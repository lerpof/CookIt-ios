//
//  ArrayExtension.swift
//  CookIt
//
//  Created by Leonardo Lazzari on 15/10/22.
//

import Foundation

extension Array {
    func split() -> [[Element]] {
        let ct = self.count
        let half = ct / 2
        let leftSplit = self[0 ..< half]
        let rightSplit = self[half ..< ct]
        return [Array(leftSplit), Array(rightSplit)]
    }
    
    func splitInPair() -> [[Element]] {
        let ct = self.count
        let half = ct / 2
        var pairArray = [[Element]]()
        for i in 0 ..< half {
            let pair = [self[i], self[i + half]]
            pairArray.append(pair)
        }
        return pairArray
    }
}
