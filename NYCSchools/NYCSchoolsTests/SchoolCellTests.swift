//
//  SchoolCellModelTests.swift
//  NYCSchoolsTests
//
//  Created by Ramar Parham on 12/26/19.
//  Copyright © 2019 Ramar Parham. All rights reserved.
//

import XCTest

@testable import NYCSchools

class SchoolCellTests: XCTestCase {

    func testPrepareUI() {
        let cell = SchoolCell(style: .default, reuseIdentifier: nil)
        XCTAssertNotNil(cell.nameLabel)
        XCTAssertNotNil(cell.addressLabel)
    }
    
    func testSetup() {
        let cell = SchoolCell(style: .default, reuseIdentifier: nil)
        cell.setup(from: SchoolModel(name: "NYC School", address: "123 Street"))
        XCTAssertNotNil(cell.nameLabel.text, "NYC School")
        XCTAssertNotNil(cell.addressLabel.text, "123 Street")
        
    }

}
