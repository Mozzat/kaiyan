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
    private let cellId2 = "HomeView2"
    private let cellId3 = "HomeView3"
    private let cellId4 = "HomeView4"
    private let cellId5 = "HomeView5"
    private let cellId6 = "HomeView6"
    lazy var tableView:UITableView = {
        let tableView = UITableView.init(frame: CGRect.init(x: 0, y: 0, width: kScreenWidth, height: self.frame.size.height), style: .plain)
        tableView.delegate = self;
        tableView.dataSource = self;
        
        ///注册cell
        tableView.register(HomeHeadCell.classForCoder(), forCellReuseIdentifier:cellId1 )
        tableView.register(HomeFollowCardCell.classForCoder(), forCellReuseIdentifier:cellId2 )
        tableView.register(HomeBannerCell.classForCoder(), forCellReuseIdentifier: cellId3)
        tableView.register(HomeInfomationCell.classForCoder(), forCellReuseIdentifier: cellId4)
        tableView.register(HomeTextCardCell.classForCoder(), forCellReuseIdentifier: cellId5)
        tableView.register(HomeVideoSmallCardCell.classForCoder(), forCellReuseIdentifier: cellId6)
        
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
