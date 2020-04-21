//
//  CommonDefine.swift
//  kaiyan
//
//  Created by 上海荣豫资产 on 2020/4/20.
//  Copyright © 2020 上海荣豫资产. All rights reserved.
//

import Foundation
import UIKit

///屏幕宽高
let kScreenWidth = UIScreen.main.bounds.size.width
let kScreenHeight = UIScreen.main.bounds.size.height

///状态栏
let kScreenStateH : CGFloat = UIApplication.shared.statusBarFrame.size.height

///判断是不是齐刘海
let isIphoneX = kScreenStateH == 44 ? true : false

///导航栏高度
let kNavHeight : CGFloat = kScreenStateH + 44

///底部标签栏高度
let bottonHeight : CGFloat = isIphoneX ? 34 : 0

///底部taibbar高度
let tabBarHeight : CGFloat = bottonHeight + 44
