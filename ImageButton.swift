//
//  ImageButton.swift
//  AutoLayoutPrayground
//
//  Created by hirothings on 2018/10/13.
//  Copyright © 2018 hirothings. All rights reserved.
//

import UIKit

@IBDesignable
final class ImageButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        commonInit()
    }
    
    override func imageRect(forContentRect contentRect: CGRect) -> CGRect {
        var rect = super.imageRect(forContentRect: contentRect)
        let size = CGSize(width: 24, height: 24)
        rect.origin.y = (contentRect.height - size.height) / 2
        rect.size = size
        return rect
    }
    
    override func titleRect(forContentRect contentRect: CGRect) -> CGRect {
        var titleRect = super.titleRect(forContentRect: contentRect)
        titleRect.origin.x -= 8
        return titleRect
    }
    
    private func commonInit() {
        backgroundColor = UIColor.white
        titleLabel?.font = UIFont.boldSystemFont(ofSize: 17)
        setTitleColor(UIColor.black, for: .normal)
        let bundle = Bundle(for: type(of: self))
        let image = UIImage(named: "smile", in: bundle, compatibleWith: nil)!
        setImage(image, for: .normal)
        imageEdgeInsets = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 0)
        contentHorizontalAlignment = .center
        layer.cornerRadius = 8
        layer.borderWidth = 2
        layer.borderColor = UIColor.orange.cgColor
    }
}
