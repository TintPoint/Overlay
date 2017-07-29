//
//  ViewCustomizableTests.swift
//  Tests
//
//  Created by Justin Jia on 9/1/16.
//  Copyright © 2016 TintPoint. MIT license.
//

import XCTest
@testable import Overlay

class TestRefreshingView: UIView, CustomDesign {

    var isRefreshed = false

    let design: (Any) -> Void = {
        let view = $0 as! TestRefreshingView
        view.isRefreshed = true
    }

}

class ViewCustomizableTests: XCTestCase {

    func testRefresh() {
        let view = TestRefreshingView()
        let subview = TestRefreshingView()
        view.addSubview(subview)
        view.refresh(includingSubviews: false)
        XCTAssert(view.isRefreshed)
        XCTAssertFalse(subview.isRefreshed)
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
        XCTAssert(view.isRefreshed)
        XCTAssert(first.isRefreshed)
        XCTAssert(second.isRefreshed)
        XCTAssert(third.isRefreshed)
    }

    func testRecursiveRefreshIncludingSubviews() {
        let highest = TestRefreshingView()
        let middle = TestRefreshingView()
        let lowest = TestRefreshingView()
        middle.addSubview(lowest)
        highest.addSubview(middle)
        highest.refresh(includingSubviews: true)
        XCTAssert(highest.isRefreshed)
        XCTAssert(middle.isRefreshed)
        XCTAssert(lowest.isRefreshed)
    }

}
