extension String {
    static var empty: String {
        return ""
    }
}

enum LabelType {
    
    typealias LabelInformation = (font: UIFont, color: UIColor)
    
    case custom(information: LabelInformation)
    case regular
}

extension LabelType {
    static var title: Self {
        .custom(information: LabelInformation(font: .titleFont, color: .black))
    }
    
    static var subtitle: Self {
        .custom(information: LabelInformation(font: .subtitleFont, color: .gray))
    }
    
    static var body: Self {
        .custom(information: LabelInformation(font: .regularFont, color: .black))
    }
}

extension LabelType {
    var information: LabelInformation {
        switch self {
        case .custom(let labelInformation):
            return labelInformation
        default:
            return LabelInformation(font: .systemFont(ofSize: 16), color: .black)
        }
    }
}

extension UIFont {
    enum CustomFontType: String {
        case regular = "OpenSans-Regular"
        case semiBold = "OpenSans-SemiBold"
        case bold = "OpenSans-Bold"
        case light = "OpenSans-Light"
    }
    
    static func customFont(type: CustomFontType, size: CGFloat) -> UIFont {
        return UIFont(name: type.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static var titleFont: UIFont {
        return .customFont(type: .bold, size: 24)
    }
    
    static var subtitleFont: UIFont {
        return .customFont(type: .semiBold, size: 18)
    }
    
    static var regularFont: UIFont {
        return .customFont(type: .regular, size: 16)
    }
}

extension UILabel {
    static func newLabel(withMessage text: String = .empty, type: LabelType) -> UILabel {
        let label = UILabel()
        label.text = text
        label.font = type.information.font
        label.textColor = type.information.color
        return label
    }
}


let titleLabel = UILabel.newLabel(withMessage: "Welcome", type: .title)
let subtitleLabel = UILabel.newLabel(withMessage: "Create an account to start", type: .subtitle)
let customSizeLabel = UILabel.newLabel(withMessage: "Custom size label", type: .custom(information: LabelType.LabelInformation(font: .customFont(type: .bold, size: 32), color: .black)))
let labelWithoutText = UILabel.newLabel(type: .regular)
