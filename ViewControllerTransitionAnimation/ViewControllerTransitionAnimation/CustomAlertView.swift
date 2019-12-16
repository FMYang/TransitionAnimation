//
//  AlertView.swift
//  ViewControllerTransitionAnimation
//
//  Created by yfm on 2019/5/24.
//  Copyright © 2019年 yfm. All rights reserved.
//

import UIKit

class CustomAlertView: FMBaseAnimationView {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.textColor = .black
        label.textAlignment = .center
        label.font = UIFont.systemFont(ofSize: 20)
        return label
    }()
    
    lazy var contentLabel: UILabel = {
        let label = UILabel()
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 16)
        label.lineBreakMode = NSLineBreakMode.byCharWrapping
        label.numberOfLines = 0
        label.textAlignment = .center
        return label
    }()
    
    lazy var doneButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("确定", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(done), for: .touchUpInside)
        return btn
    }()

    lazy var cancelButton: UIButton = {
        let btn = UIButton()
        btn.setTitle("取消", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        btn.addTarget(self, action: #selector(cancel), for: .touchUpInside)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.backgroundColor = .white
        self.setupSubViews()
    }
    
    convenience init(title: String, message: String) {
        self.init(frame: .zero)
        self.titleLabel.text = title
        self.contentLabel.text = message
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func done() {
        self.dismiss()
    }

    @objc func cancel() {
        self.dismiss()
    }
    
    func setupSubViews() {
        addSubview(titleLabel)
        addSubview(contentLabel)
        addSubview(cancelButton)
        
        titleLabel.snp.makeConstraints { (make) in
            make.top.equalToSuperview().offset(15)
            make.left.right.equalToSuperview()
            make.height.equalTo(20)
        }
        
        contentLabel.snp.makeConstraints { (make) in
            make.top.equalTo(titleLabel.snp.bottom).offset(15)
            make.left.equalToSuperview().offset(15)
            make.right.equalToSuperview().offset(-15)
        }
        
        cancelButton.snp.makeConstraints { (make) in
            make.top.equalTo(contentLabel.snp.bottom).offset(15)
            make.left.right.equalToSuperview()
            make.height.equalTo(40)
            make.bottom.equalToSuperview()
        }
    }
}
