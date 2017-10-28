//
//  SMT_Math_Tests.swift
//  SMT Math Tests
//
//  Created by Marcel Kröker on 28.10.17.
//  Copyright © 2017 Marcel Kröker. All rights reserved.
//

@testable import Swift_Math_Library

import XCTest

class SMT_Math_Tests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
	func test_math_primesTo()
	{
		let testData = math.primesTo(1000)

		// Fail if the prime is divisible by any number other than 1 and itself.
		for prime in testData
		{
			if prime == 2 || prime == 3 { continue }
			for div in 2...(prime / 2)
			{
				if prime % div == 0
				{
					XCTFail("\(prime) is not a prime")
				}
			}
		}
	}

	func testPerformanceExample() {
		// This is an example of a performance test case.
		self.measure {
			_ = math.primesTo(1_000_000)
			// Put the code you want to measure the time of here.
		}
	}
    
}
