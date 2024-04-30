import XCTest
@testable import testesUnitarios

final class StringUtilsSpec: XCTestCase {

    func testIsValidEmail() {
        let email = "curso"
        let value = email.isValidEmail()
        
        XCTAssertFalse(value, "Não é um email valido")
    }
    
    func testRemoveWhiteSpace() {
        let text = "Olá Mundo"
        let newText = text.removeWhitespace()
        
        XCTAssert(newText == "OláMundo", "Não removeu os espaços")
    }
    
    func testReplace() {
        let text = "Swift"
        let newText = text.replace(string: "S", replacement: "D")
        let newText2 = newText.replace(string: "t", replacement: "x")
        
        XCTAssert(newText == "Dwift")
        XCTAssert(newText2 == "Dwifx")
    }
}
