//
//  ViewCustomizableTests.swift
//  Overlay
//
//  Created by Justin Jia on 9/1/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class TestRefreshingView: UIView, CustomDesign {

    var refreshed = false

    let design: (DesignCustomizable) -> Void = {
        let view = $0 as! TestRefreshingView
        view.refreshed = true
    }

}

class ViewCustomizableTests: XCTestCase {

    func testRefresh() {
        let view = TestRefreshingView()
        let subview = TestRefreshingView()
        view.addSubview(subview)
        view.refresh(includingSubviews: false)
        XCTAssert(view.refreshed)
        XCTAssertFalse(subview.refreshed)
    }

    func testRefreshIncludingSubviews() {
        let view = TestRefreshingView()
        let first = TestRefreshingView()
        let second = TestRefreshingView()
        let third = TestRefreshingView()
        view.addSubview(first)
        view.addSubview(second)
        view.addSubview(third)
        view.refresh(includingSubviews: true)
        XCTAssert(view.refreshed)
        XCTAssert(first.refreshed)
        XCTAssert(second.refreshed)
        XCTAssert(third.refreshed)
    }

    func testRecursiveRefreshIncludingSubviews() {
        let highest = TestRefreshingView()
        let middle = TestRefreshingView()
        let lowest = TestRefreshingView()
        middle.addSubview(lowest)
        highest.addSubview(middle)
        highest.refresh(includingSubviews: true)
        XCTAssert(highest.refreshed)
        XCTAssert(middle.refreshed)
        XCTAssert(lowest.refreshed)
    }

}
