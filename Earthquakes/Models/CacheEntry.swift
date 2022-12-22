//
//  CacheEntry.swift
//  EarthquakesTests
//
//  Created by Rafael Perez on 22/12/22.
//  Copyright © 2022 Apple. All rights reserved.
//

import Foundation

final class CacheEntryObject {
    let entry: CacheEntry
    init(entry: CacheEntry) { self.entry = entry }
}

enum CacheEntry {
    case inProgress(Task<QuakeLocation, Error>)
    case ready(QuakeLocation)
}
