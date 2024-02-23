//
//  ProfileTests.swift
//  MobileBankAppUnitTests
//
//  Created by Jakub Kuciński on 23/02/2024.
//

import Foundation
import XCTest

@testable import MobileBankApp

class ProfileTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
    }
    
    func testCanParse() throws {
        let json = """
        {
        "id": "7",
        "first_name": "Jan",
        "last_name": "Kowalski",
        }
        """
        
        let data = json.data(using: .utf8)!
        let result = try! JSONDecoder().decode(Profile.self, from: data)
        
        XCTAssertEqual(result.id, "7")
        XCTAssertEqual(result.firstName, "Jan")
        XCTAssertEqual(result.lastName, "Kowalski")
    }
}
