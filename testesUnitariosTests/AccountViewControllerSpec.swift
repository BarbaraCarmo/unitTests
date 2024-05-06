//
//  AccountViewControllerSpec.swift
//  testesUnitariosTests
//
//  Created by Bárbara Carmo on 06/05/24.
//

import Quick
import Nimble
@testable import testesUnitarios

class AccountViewModelMock: AccountViewModelProtocol {
    var status = ""
    
    var instructionText: String { return ""}
    
    var loginButtonHasBeenCalled = false
    
    func loginButtonTap() {
        loginButtonHasBeenCalled = true
    }
    
    func shouldRequestLocation(showAlert: () -> (), askUserPermission: () -> (), completion: () -> ()) {}
}

class AccountViewControllerSpec: QuickSpec {
    override class func spec() {
        describe("AccountViewController") {
            var sut: AccountViewController!
            var sutMock: AccountViewModelMock!
            
            beforeEach {
                sutMock = AccountViewModelMock()
                sut = AccountViewController(nibName: "AccountViewController", bundle: nil)
                sut.viewModel = sutMock
            }
            
            context("Actions") {
                it("Login Button Tap") {
                    sut.loginButtonAction(UIButton())
                    expect(sutMock.loginButtonHasBeenCalled).to(beTrue())
                }
            }
        }
    }
}
