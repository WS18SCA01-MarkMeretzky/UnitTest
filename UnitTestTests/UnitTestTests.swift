//
//  UnitTestTests.swift
//  UnitTestTests
//
//  Created by Mark Meretzky on 4/7/19.
//  Copyright © 2019 New York University School of Professional Studies. All rights reserved.
//

import XCTest
@testable import UnitTest

class UnitTestTests: XCTestCase {

    override func setUp() {
        super.setUp();
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown();
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPersonInitSuccess() {
        let person: Person? = Person(name: "Donald Trump");
        XCTAssertNotNil(person)
    }
    
    func testPersonInitFail() {
        let emptyName: Person? = Person(name: "");
        XCTAssertNil(emptyName);
    }
    
    func testPersonName() {
        let person: Person = Person(name: "Donald Trump")!;
        XCTAssertEqual(person.name, "Donald Trump");
    }
    
    func testCount() {
        guard let appDelegate: AppDelegate = UIApplication.shared.delegate as? AppDelegate else {
            XCTFail("couldn't get app delegate");
            return;
        }
        
        guard let window: UIWindow = appDelegate.window else {
            XCTFail("couldn't get window");
            return;
        }
        
        guard let navigationController: UINavigationController = window.rootViewController as? UINavigationController else {
            XCTFail("couldn't get navigation controller");
            return;
        }
        
        guard let personTableViewController: PersonTableViewController = navigationController.topViewController as? PersonTableViewController else {
            XCTFail("couldn't get PersonTableViewController");
            return;
        }
        
        XCTAssertEqual(personTableViewController.persons.count, 10);
        XCTAssertEqual(personTableViewController.tableView.numberOfSections, 1);
        XCTAssertEqual(personTableViewController.tableView.numberOfRows(inSection: 0), 10);
    }

    func testPerformanceExample() {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
            let appDelegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate;
            let navigationController: UINavigationController = appDelegate.window!.rootViewController as! UINavigationController;
            let personTableViewController: PersonTableViewController = navigationController.topViewController as! PersonTableViewController;
            personTableViewController.tableView.reloadData();
        }
    }

}
