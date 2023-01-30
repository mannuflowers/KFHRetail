//
//  extensions.swift
//  KFHRetail
//
//  Created by asmat manal on 04/01/23.
//

import UIKit

let width = 35
let height = 35
let width1 = 8
let height1 = 13

class SpacerView: UIView {

    let space: CGFloat

    override var intrinsicContentSize: CGSize {
        return .init(width: space, height: space)
    }

    init(space: CGFloat) {
        self.space = space
        super.init(frame: .zero)
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}


class restrictSizeImageView1: UIImageView {
    
    let height: CGFloat
    let width: CGFloat
    
    override var intrinsicContentSize: CGSize {
        return .init(width: width, height: height)
    }
    
    init(height: CGFloat,width: CGFloat) {
        self.height = height
        self.width = width
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

//class createStackView: UIStackView {
//    
//    let title1: UILabel
//    let title2: UILabel
//}


extension UIView {
    func anchor(top: NSLayoutYAxisAnchor?, left: NSLayoutXAxisAnchor?, bottom: NSLayoutYAxisAnchor?, right: NSLayoutXAxisAnchor?,  paddingTop: CGFloat, paddingLeft: CGFloat, paddingBottom: CGFloat, paddingRight: CGFloat, width: CGFloat, height: CGFloat) {
        
        translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: -paddingBottom).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        
        if width != 0 {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if height != 0 {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
}

extension UIImageView {
    convenience init(cornerRadius: CGFloat) {
        self.init(image: nil)
        self.layer.cornerRadius = cornerRadius
        self.clipsToBounds = true
        self .contentMode = .scaleAspectFill
    }
}

extension UILabel {
    convenience init(text: String, font: UIFont) {
        self.init(frame: .zero)
        self.text = text
        self.font = font
    }
}

extension UIColor {
    
    static let customLightGray = UIColor(red: 0.898, green: 0.898, blue: 0.898, alpha: 1)
    static let veryLightGray = UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    static let cactusGreen = UIColor(red: 0.357, green: 0.561, blue: 0.42, alpha: 1)
    static let yellowOchre = UIColor(red: 0.859, green: 0.651, blue: 0.118, alpha: 1)
    static let backgroundGray = UIColor(red: 0.965 , green: 0.965, blue: 0.965, alpha: 1)
    static let fontGray = UIColor(red: 0.498, green: 0.498, blue: 0.498, alpha: 1)
    static let darkGray = UIColor(red: 0.333, green: 0.333, blue: 0.333, alpha: 1)
    static let someGray = UIColor(red: 0.478, green: 0.486, blue: 0.482, alpha: 1)
    static let maroonRed = UIColor(red: 0.6, green: 0.149, blue: 0, alpha: 1)
    static let floroGreen = UIColor(red: 0.498, green: 0.776, blue: 0.58, alpha: 1)
    
    convenience init(red: Int, green: Int, blue: Int, a: CGFloat = 1.0) {
        self.init(
            red: CGFloat(red) / 255.0,
            green: CGFloat(green) / 255.0,
            blue: CGFloat(blue) / 255.0,
            alpha: a
        )
    }
    

}
  
extension UIView {
    func fillSuperview(padding: UIEdgeInsets = .zero) {
        translatesAutoresizingMaskIntoConstraints = false
        if let superviewTopAnchor = superview?.topAnchor {
            topAnchor.constraint(equalTo: superviewTopAnchor, constant: padding.top).isActive = true
        }
        
        if let superviewBottomAnchor = superview?.bottomAnchor {
            bottomAnchor.constraint(equalTo: superviewBottomAnchor, constant: -padding.bottom).isActive = true
        }
        
        if let superviewLeadingAnchor = superview?.leadingAnchor {
            leadingAnchor.constraint(equalTo: superviewLeadingAnchor, constant: padding.left).isActive = true
        }
        
        if let superviewTrailingAnchor = superview?.trailingAnchor {
            trailingAnchor.constraint(equalTo: superviewTrailingAnchor, constant: -padding.right).isActive = true
        }
    }
}

extension UIButton {
    convenience init(title: String) {
        self.init(type: .system)
        self.setTitle(title, for: .normal)
    }
}

