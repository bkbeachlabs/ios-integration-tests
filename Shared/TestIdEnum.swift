//
//  TestIdEnum.swift
//  IntegrationTestApp
//
//  Created by Andrew King on 2020-03-10.
//  Copyright © 2020 BKBeachLabs. All rights reserved.
//

import Foundation

/// This enum is shared between the test app and its UI Tests. This allows us to use the same
/// constants to pick the test as to run the test.
enum TestId: String {
    case doesSomethingRight
    case doesAnotherThing
}
