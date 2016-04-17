//
//  Food_TrackerTests.swift
//  Food TrackerTests
//
//  Created by Manwe on 4/10/16.
//  Copyright © 2016 Manwe. All rights reserved.
//

import XCTest
@testable import Food_Tracker

class Food_TrackerTests: XCTestCase {
    // MARK: FoodTracker Tests

    // Tests to confirm that the Meal initializer returns nil when no name or
    // a negative rating is provided.
    func testMealInitialization() {
        // Success case
        let potentialMeal = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialMeal)

        // Fail case
        let noName = Meal(name: "", photo: nil, rating: 0)
        XCTAssertNil(noName)

        let badRating = Meal(name: "Bad Meal", photo: nil, rating: -1)
        XCTAssertNil(badRating, "Negative ratings are invalid, be positive.")
    }
}
