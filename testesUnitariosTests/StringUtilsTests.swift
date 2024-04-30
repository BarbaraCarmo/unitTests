//
//  StringUtilsTests.swift
//  testesUnitariosTests
//
//  Created by Bárbara Carmo on 30/04/24.
//

import Quick
import Nimble
@testable import testesUnitarios

class StringUtilsTests: QuickSpec {
    override class func spec() {
        describe("StringUtils") {
            context("Is valid email") {
                it("Valid") {
                    let email = "curso@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                it("Invalid") {
                    let email = "curso"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }
}
