//
//  AsyncProcessSpec.swift
//  testesUnitariosTests
//
//  Created by Bárbara Carmo on 06/05/24.
//

import Quick
import Nimble
@testable import testesUnitarios

class AsyncProcessSpec: QuickSpec {
    override class func spec() {
        describe("AsyncProcess") {
            context("callThatResultsInSideEffect") {
                it("Test") {
                    let asycProcess = AsyncProcess()
                    asycProcess.callThatResultsInSideEffect()
                    expect(asycProcess.name).toEventually(equal("Curso"))
                }
                
                it("Do Stuff") {
                    let asycProcess = AsyncProcess()
                    
                    waitUntil { done in
                        asycProcess.doStuff { result in
                            expect(result).to(equal("Curso"))
                            done()
                        }
                    }
                }
            }
        }
    }
}
