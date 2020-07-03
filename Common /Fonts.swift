
import SwiftUI

enum CustomFontType: String {
    case regular = "OpenSans-Regular"
    case semiBold = "OpenSans-SemiBold"
    case bold = "OpenSans-Bold"
    case light = "OpenSans-Light"
}

// MARK: - SwiftUI

extension Font {
    
    static func customFont(type: CustomFontType, size: CGFloat) -> Font {
        return custom(type.rawValue, size: size)
    }
    
    static let titleFont: Font = {
        return customFont(type: .semiBold, size: 26)
    }()
    
    static let descriptionFont: Font = {
        return customFont(type: .semiBold, size: 14)
    }()
}

struct ContentView: View {
    var body: some View {
        Text("Hello World!")
            .font(.titleFont)
    }
}

// MARK: - UIKit

extension UIFont {
    
    static func customFont(type: CustomFontType, size: CGFloat) -> UIFont {
        return UIFont(name: type.rawValue, size: size) ?? UIFont.systemFont(ofSize: size)
    }
    
    static let titleFont: UIFont = {
        return customFont(type: .semiBold, size: 26)
    }()
    
    static let descriptionFont: UIFont = {
        return customFont(type: .semiBold, size: 14)
    }()
}

