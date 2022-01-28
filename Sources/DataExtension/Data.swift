//
//  Data.swift
//  SwiftAsyncSocket
//
//  Created by chouheiwa on 2018/12/18.
//  Copyright © 2018 chouheiwa. All rights reserved.
//

import Foundation

extension Data {
    func convert<DataType>(offset: Int = 0) -> UnsafePointer<DataType> {
        let nsData = self as NSData
        let ptr = nsData.bytes.assumingMemoryBound(to: DataType.self)
        return ptr + offset
    }

    mutating func convertMutable<T>(offset: Int = 0) -> UnsafeMutablePointer<T> {
        let nsData = self as NSData
        let ptr = nsData.bytes.assumingMemoryBound(to: T.self)
        return UnsafeMutablePointer<T>(mutating: ptr) + offset
    }
}
