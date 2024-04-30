//
//  BeforeEachAfterEachTests.swift
//  testesUnitariosTests
//
//  Created by Bárbara Carmo on 30/04/24.
//

import UIKit
import Quick
import Nimble

final class BeforeEachAfterEachTests: QuickSpec {
    
    override class func spec() {
        describe("beforeEach and afterEach behaviour") {
            beforeEach {
                print("⭐️ Describe before each")
            }
            
            context("first context") {
                beforeEach {
                    print("🍎 context before each - first context")
                }
                
                it("example 1") { print("😊 example 1") }
                
                it("example 2") { print("😊 example 2") }
                
                it("example 3") { print("😊 example 3") }
                
                afterEach {
                    print("👉 context after each - first context")
                }
            }
            
            context("second context") {
                beforeEach {
                    print("🍎 context before each - second context")
                }
                
                it("example 1") { print("😜 example 1") }
                
                it("example 2") { print("😜 example 2") }
                
                afterEach {
                    print("👉 context after each - second context")
                }
            }
            
            afterEach {
                print("☁️ Describe after each")
            }
        }
    }
}
