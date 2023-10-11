import UIKit

extension UIView {

    func anchor(top: NSLayoutYAxisAnchor? = nil,
                left: NSLayoutXAxisAnchor? = nil,
                bottom: NSLayoutYAxisAnchor? = nil,
                right: NSLayoutXAxisAnchor? = nil,
                paddingTop: CGFloat = 0,  //Yukarıdan boşluğu
                paddingLeft: CGFloat = 0,
                paddingBottom: CGFloat = 0,
                paddingRight: CGFloat = 0,
                width: CGFloat? = nil,
                height: CGFloat? = nil){

            
        translatesAutoresizingMaskIntoConstraints = false //fonk. uyguladığımız UIView elemanlarına bu uygulanacaktır

        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {

        }
        if let bottom = bottom {

        }
        if let right = right {

        }
    
    
    }
}