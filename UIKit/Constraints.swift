import UIKit

extension UIView {
    
    private func setAutoresizingMaskIfNeeded() {
        if translatesAutoresizingMaskIntoConstraints {
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
    
    func setSize(width: CGFloat? = nil, height: CGFloat? = nil) {
        setAutoresizingMaskIfNeeded()
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    func setSizeEqual(to view: UIView, factor: CGFloat = 1.0) {
        setAutoresizingMaskIfNeeded()
        widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: factor).isActive = true
        heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: factor).isActive = true
    }
    
    func centerView(into view: UIView) {
        setAutoresizingMaskIfNeeded()
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setConstraint(top: NSLayoutYAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, leading: NSLayoutXAxisAnchor? = nil, trailing: NSLayoutXAxisAnchor? = nil, padding: UIEdgeInsets = .zero) {
        setAutoresizingMaskIfNeeded()
        
        if let topConstraint = top {
            topAnchor.constraint(equalTo: topConstraint, constant: padding.top).isActive = true
        }
        
        if let bottomConstraint = bottom {
            bottomAnchor.constraint(equalTo: bottomConstraint, constant: padding.bottom).isActive = true
        }
        
        if let leadingConstraint = leading {
            leadingAnchor.constraint(equalTo: leadingConstraint, constant: padding.left).isActive = true
        }
        
        if let trailingConstaint = trailing {
            trailingAnchor.constraint(equalTo: trailingConstaint, constant: padding.right).isActive = true
        }
    }
}

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let childView = UIView()
        view.addSubview(childView)
        
        childView.setConstraint(top: view.topAnchor, leading: view.leadingAnchor, trailing: view.trailingAnchor, padding: .init(top: 10, left: 5, bottom: 0, right: 5))
        childView.setSize(height: 50)
    }
}
