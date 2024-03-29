//
//  Extension.swift
//  openFireApp
//
//  Created by mac on 7/21/19.
//  Copyright © 2019 arrow. All rights reserved.
//

import UIKit

extension UIView {
    
//    func setAnchor(width: CGFloat,height:CGFloat) {
//        self.setAnchor(
//                       top: nil,
//                       height: nil,
//                       bottom:nil,
//                       right: nil,
//                       paddingTop:0,
//                       paddingLeft:0,
//                       paddingRight:0,
//                       paddingBottom:0,
//                       width:width,
//                       height:height)
//    }
    
    func setAnchor(width:CGFloat, height:CGFloat) {
        self.widthAnchor.constraint(equalToConstant: width).isActive = true
        self.heightAnchor.constraint(equalToConstant: height).isActive = true
    }
    
    func setAnchor(top: NSLayoutYAxisAnchor?,left:NSLayoutXAxisAnchor?,
                   bottom:NSLayoutYAxisAnchor?,right:NSLayoutXAxisAnchor?,
                   paddingTop:CGFloat,paddingLeft:CGFloat,paddingBottom:CGFloat,
                   paddingRight:CGFloat,width:CGFloat = 0,height:CGFloat = 0) {
        
        self.translatesAutoresizingMaskIntoConstraints = false
        
        if let top = top {
            self.topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        if let left = left {
            self.leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        if let bottom = bottom {
            self.bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        if let right = right {
            self.rightAnchor.constraint(equalTo: right, constant: -paddingRight).isActive = true
        }
        if width != 0 {
            self.widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        if height != 0 {
            self.heightAnchor.constraint(equalToConstant: height).isActive = true
        }
    }
    
    var safeTopAnchor:NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.topAnchor
        }
        return topAnchor
    }
    
    var safeLeftAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.leftAnchor
        }
        return leftAnchor
    }
    
    var safeBottomAnchor:NSLayoutYAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.bottomAnchor
        }
        return bottomAnchor
    }
    
    var safeRightAnchor: NSLayoutXAxisAnchor {
        if #available(iOS 11.0, *) {
            return safeAreaLayoutGuide.rightAnchor
        }
        return rightAnchor
    }
    
}
