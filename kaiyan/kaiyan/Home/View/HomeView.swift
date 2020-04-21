//
//  HomeView.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/21.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import UIKit


class HomeView: UIView {
    
    private let cellId1 = "HomeView1"
    lazy var tableView:UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: self.frame.size.height), style: .plain)
        tableView.delegate = self;
        tableView.dataSource = self;
        return tableView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension HomeView : UITableViewDelegate,UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellId1, for: indexPath)
        return cell
    }
    
}
