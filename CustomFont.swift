import UIKit

protocol CustomFont: ViewCustomizable {

    var font: UIFont! { get set }
    var fontStyle: FontStyle { get }

}
