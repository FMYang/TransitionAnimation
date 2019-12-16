//
//  RootViewController.swift
//  ViewControllerTransitionAnimation
//
//  Created by yfm on 2019/6/26.
//  Copyright © 2019年 yfm. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {
    
    lazy var tableView: UITableView = {
        let view = UITableView()
        view.delegate = self
        view.dataSource = self
        view.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        return view
    }()
    
    var datasource = ["alert", "actionSheet", "xib"]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints { (make) in
            make.edges.equalToSuperview()
        }
    }

}

extension RootViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = datasource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch indexPath.row {
        case 0:
            let view = CustomAlertView(title: "你好啊", message: "水电费吉林省发简历计算机历史记录骄傲是啊大神福利")
            view.layer.cornerRadius = 8
            view.show(in: self, style: .alert)
        case 1:
            let view = CustomAlertView(title: "你好啊", message: "水电费吉林省发简历计算机历史记录骄傲是啊大神福利")
            view.widthConstraint = 300
            view.show(in: self, style: .actionSheet)
        case 2:
            let view = Bundle.main.loadNibNamed("NibView", owner: nil, options: nil)?.first as? FMBaseAnimationView
            view?.layer.cornerRadius = 8
            view?.widthConstraint = 300
            view?.show(in: self, style: .alert)

        default:
            break
        }
    }
}
