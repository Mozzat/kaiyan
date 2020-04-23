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
    private let cellId7 = "HomeView7"
    var index : Int = 1
    var data : NSArray?
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
        tableView.register(HomeHeadCell.classForCoder(), forCellReuseIdentifier: cellId7)
        tableView.estimatedRowHeight = 70;
        tableView.rowHeight = UITableView.automaticDimension
        tableView.showsVerticalScrollIndicator = false
        tableView.showsHorizontalScrollIndicator = false
        return tableView
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        initSubviews()
        loadLocalData()
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

extension HomeView : UITableViewDelegate,UITableViewDataSource {
    
    func initSubviews() {
        self.addSubview(self.tableView)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        if let count = self.data?.count {
            return count
        }
        
        return 0;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var  cell : HomeBaseCell?
        if let count = self.data?.count {
            if indexPath.row < count {
                
                let dataDic = self.data![indexPath.row] as? NSDictionary
                let type : String = dataDic?["type"] as! String
                if type == HomeType.TextCard {
                    cell = tableView.dequeueReusableCell(withIdentifier: cellId1, for: indexPath) as! HomeHeadCell
                    cell?.dataDic = dataDic
                    return cell!
                } else if type == HomeType.FollowCard {
                    cell = tableView.dequeueReusableCell(withIdentifier: cellId2, for: indexPath) as! HomeFollowCardCell
                    cell?.dataDic = dataDic
                    return cell!
                } else {
                    cell = tableView.dequeueReusableCell(withIdentifier: cellId7, for: indexPath) as!
                        HomeHeadCell
                    return cell!
                }
                
            }
        }
        return cell!
    }
    
}

///data
extension HomeView {
    
    func loadLocalData() {
        
        let path = Bundle.main.path(forResource: "data", ofType: ".json")
        let url = URL.init(fileURLWithPath: path!)
        if let jsonData = try? Data(contentsOf: url) {
            do {
                
                if let jsonObj:NSDictionary = try JSONSerialization.jsonObject(with: jsonData, options: JSONSerialization.ReadingOptions()) as? NSDictionary {
                 
                    print(jsonObj)
                    self.data = jsonObj["itemList"] as? NSArray
                    self.tableView.reloadData()
                }
            } catch let error as NSError {
                print("解析出错: \(error.localizedDescription)")
            }
        }
        
    }
    
}
