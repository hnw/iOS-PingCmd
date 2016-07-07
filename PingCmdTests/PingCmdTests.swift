//
//  PingCmdTests.swift
//  PingCmdTests
//
//  Created by hnw on 2016/07/07.
//  Copyright © 2016年 hnw. All rights reserved.
//

import XCTest
@testable import PingCmd

class PingCmdTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        let cmd = PingCmd(["ping", "-c", "4", "8.8.8.8"])
        cmd.exec()
        cmd.exec()
        print("cout=\(cmd.cout)")
        print("cerr=\(cmd.cerr)")
        print("retval=\(cmd.retval)")

        let cmd2 = PingCmd(["ping", "-c", "4", "8.8.8.8"])
        cmd2.exec()
        print("cout=\(cmd2.cout)")
        print("cerr=\(cmd2.cerr)")
        print("retval=\(cmd2.retval)")

        XCTAssert(true)
    }
    

}
