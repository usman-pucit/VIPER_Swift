//
//  BaseButton.swift
//  VIPER_Example
//
//  Created by Malik Usman on 15/05/2019.
//  Copyright © 2019 Usman. All rights reserved.
//

import UIKit

class BaseButton: UIButton {
    override init(frame: CGRect) {
        super.init(frame: frame)
    }

    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }

    open override func awakeFromNib() {
        super.awakeFromNib()
    }
}
