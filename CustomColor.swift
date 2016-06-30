import UIKit

protocol CustomTextColor: ViewCustomizable {

    var textColor: UIColor? { get set }
    var textColorStyle: ColorStyle { get }

}

protocol CustomBackgroundColor: ViewCustomizable {

    var backgroundColor: UIColor? { get set }
    var backgroundColorStyle: ColorStyle { get }

}

protocol CustomButtonTitleColor: ViewCustomizable {

    func setTitleColor(_ color: UIColor?, for state: UIControlState)
    var titleColorStyle: ColorStyle { get }

}
