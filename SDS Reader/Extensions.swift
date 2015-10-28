//
//  Extensions.swift
//  SDS Reader
//
//  Created by Gujgiczer Máté on 28/10/15.
//  Copyright © 2015 SDS. All rights reserved.
//

import Foundation

extension String {
    subscript (r: Range<Int>) -> String? {
        if self.characters.count >= r.startIndex {
            let startIndex = self.startIndex.advancedBy(r.startIndex)
            let incrementValue = min(r.endIndex, self.characters.count)
            let endIndex = startIndex.advancedBy(incrementValue - r.startIndex)
        
            return self.substringWithRange(Range<Index>(start: startIndex, end: endIndex))
        }
        return nil
    }

    func nthLine(n :Int) -> String? {
        return self.componentsSeparatedByString("\n")[n - 1]
    }
}
