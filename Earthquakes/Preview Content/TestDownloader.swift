//
//  TestDownloader.swift
//  EarthquakesTests
//
//  Created by Rafael Perez on 20/12/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

class TestDownloader: HTTPDataDownloader {
    
    func httpData(from url: URL) async throws -> Data {
        try await Task.sleep(nanoseconds: UInt64.random(in: 1_000_000...5_000_000))
        return testQuakesData
    }
}
