//
//  NibView.swift
//  ViewControllerTransitionAnimation
//
//  Created by yfm on 2019/5/24.
//  Copyright © 2019年 yfm. All rights reserved.
//

import UIKit

class NibView: FMBaseAnimationView {
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    @IBAction func cancel(_ sender: UIButton) {
        self.dismiss()
    }
}
