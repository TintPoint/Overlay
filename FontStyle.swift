import UIKit

protocol FontStyle {

    func font() -> UIFont

}

struct Font: FontStyle {

    private let fontStorage: UIFont

    init(_ font: UIFont) {
        fontStorage = font
    }

    func font() -> UIFont {
        return fontStorage
    }

}
